package com.devpro.Wayshop1.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.Wayshop1.conf.MVCConf;
import com.devpro.Wayshop1.model.ProductSearchModel;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.product_imagesE;
import com.devpro.Wayshop1.model.ProductModel;
import com.devpro.Wayshop1.model.Product_imagesModel;
import com.github.slugify.Slugify;
@Service
public class ProductService extends BaseService<ProductE>{
	@PersistenceContext
	EntityManager entityManager;
	@Autowired
	private Product_ImagesService productImagesService;
	@SuppressWarnings("unchecked")
	public List<ProductE> searchProduct(ProductSearchModel searchModel){
	
		String sql = "SELECT * FROM tbl_products p WHERE 1=1";

		// tim kiem san pham theo categoryId
		if (searchModel.getCategoryId() > 0) {
			sql += " and p.category_id = " + searchModel.getCategoryId();
		}
		// productSeo
		if (!StringUtils.isEmpty(searchModel.getProductSeo())) {
			sql = sql + " and p.seo = '" + searchModel.getProductSeo() + "'";
		}
		// tim kiem san pham theo categorySeo
		if (!StringUtils.isEmpty(searchModel.getCategorySeo())) {
			sql += " and p.category_id in (select id from tbl_category c where c.seo = '" + searchModel.getCategorySeo()
					+ "')";
		}

		// tim kiem san pham theo seachText
		if (!StringUtils.isEmpty(searchModel.getSearchText())) {
			sql += " and (p.title like '%" + searchModel.getSearchText() + "%'" + " or p.detail_description like '%"
					+ searchModel.getSearchText() + "%'" + " or p.short_description like '%"
					+ searchModel.getSearchText() + "%')";
		}

		return executeNativeSql(sql);
	}

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<ProductE> clazz() {
		// TODO Auto-generated method stub
		return ProductE.class;
	}
//	nen dung trong ultilities
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;
		
		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;
		
		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
//	Transaction: đảm bảo tính nhất quán dữ liệu trong db, vdu, luu productImages lỗi, thì cũng ko lưu product đó
//	RollBack: sdung khi hàm chứa nhiều hành động 
	// EDIT
	@Transactional(rollbackOn = Exception.class)
	public ProductE edit(ProductE product, MultipartFile avatar, MultipartFile[] pictures)
			throws Exception {
		try {
			// lay thong tin san pham trong db.
			ProductE productOnDb = super.getById(product.getId());
			
			// avatar
			if(!isEmptyUploadFile(avatar)) {
				// xoa avatar cu di
				new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
				
				// add avartar moi
				avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			} else {
				// su dung lai avatar cu
				product.setAvatar(productOnDb.getAvatar());
			}
			
			// product images
			if(!isEmptyUploadFile(pictures)) {
				// xoa danh sach anh cu di
				Set<product_imagesE> productImagesOnDb = productOnDb.getProduct_images();
				for(product_imagesE pic : productImagesOnDb) {
					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
//					product.deleteProductImages(pic);
					productImagesService.delete(pic);
				}
				
				// update danh sach anh moi
				for(MultipartFile pic : pictures) {
					pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));
					
					product_imagesE pi = new product_imagesE();
					pi.setPath("product/pictures/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addImages(pi);;
				}
			}
			// save to db
			ProductE saved = super.saveOrUpdate(product);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	// save or update
	@Transactional(rollbackOn = Exception.class)
	public ProductE saveOrUpdate(ProductE product, MultipartFile avatar, MultipartFile[] productPictures) throws Exception {
		try {
//			avatar
			if(isEmptyUploadFile(avatar) == false) {
				avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			}
			// product images
			if(isEmptyUploadFile(productPictures) == false) {
				for (MultipartFile pic : productPictures) {
					pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/images/" + pic.getOriginalFilename()));
					product_imagesE pi = new product_imagesE();
					pi.setPath("product/avatar/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addImages(pi);
				}
			}
			// tạo seo cho product			
			product.setSeo(new Slugify().slugify(product.getTitle()));
			ProductE saved = super.saveOrUpdate(product);
			return saved;
//			throw new Exception("Test RollBack");
		}catch(Exception e) {
			throw e;
		}
	}
	
//	delete
	@Transactional(rollbackOn = Exception.class)
	public void deleteProduct(int id) throws Exception {
		try {
			ProductE productOnDb = super.getById(id);
			new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
				Set<product_imagesE> productImagesOnDb = productOnDb.getProduct_images();
				for (product_imagesE pic : productImagesOnDb) {
					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
//					product.deleteProductImages(pic);
					productImagesService.delete(pic);
				}
			
			delete(productOnDb);
		} catch (Exception e) {
			throw e;
		}

	}
}

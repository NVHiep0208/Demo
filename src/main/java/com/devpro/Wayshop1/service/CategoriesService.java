package com.devpro.Wayshop1.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.Wayshop1.model.CategoriesModel;
import com.github.slugify.Slugify;
import com.devpro.Wayshop1.conf.MVCConf;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.product_imagesE;

@Service
public class CategoriesService extends BaseService<CategoriesE> {
//	model sẽ chứa các request 
//  Service: là tầng trung gian để lấy dữ liệu từ database
//	sau do inject class service vao controller = @Autowired
	@PersistenceContext
	EntityManager entityManager;
	
	
	@SuppressWarnings("unchecked")
	public List<CategoriesE> searchCate(CategoriesModel searchModel){
		try {
			String sql = "SELECT * FROM tbl_category c WHERE 1=1";
			if(searchModel != null) {
				if(searchModel.getId() > 0) {
					sql = sql + "AND c.id = " + searchModel.getId();
				}
				if(searchModel.getName() != null && !searchModel.getName().isEmpty()) {
					sql = sql + "AND c.name like '%" + searchModel.getId() + "%'";
				}				
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<CategoriesE>();
		}	
	}
	// searchModel : đối tượng bao đóng tất cả các trường vì có nhiều biến thì get sẽ rất nhiều nên dùng 1 đối tượng sẽ nhanh gọn hơn 
	public List<CategoriesE> getAllParents() {
		String jpql = "select * from tbl_category tc where tc.parent_id is null";
		return this.executeNativeSql(jpql);
	}
	@Override
	protected EntityManager em() {		
		return entityManager;
	}

	@Override
	protected Class<CategoriesE> clazz() {
		return CategoriesE.class;
	}
	@Transactional(rollbackOn = Exception.class)
	public CategoriesE edit(CategoriesE category)
			throws Exception {
		try {
			// lay thong tin san pham trong db.
			CategoriesE categoryOnDb = super.getById(category.getId());
			
			// save to db
			CategoriesE saved = super.saveOrUpdate(category);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	@Transactional(rollbackOn = Exception.class)
	public CategoriesE saveOrUpdate(CategoriesE category) {
		
			// tạo seo cho product			
//			product.setSeo(new Slugify().slugify(product.getTitle()));
		CategoriesE saved = super.saveOrUpdate(category);
		return saved;
//			throw new Exception("Test RollBack");
	}
	
//	delete
	@Transactional(rollbackOn = Exception.class)
	public void deleteCategory(int id) throws Exception {
		try {
			CategoriesE categoryOnDb = super.getById(id);
//			new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
//				Set<product_imagesE> productImagesOnDb = productOnDb.getProduct_images();
//				for (product_imagesE pic : productImagesOnDb) {
//					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
////					product.deleteProductImages(pic);
//					productImagesService.delete(pic);
//				}
			
			delete(categoryOnDb);
		} catch (Exception e) {
			throw e;
		}
	}
}

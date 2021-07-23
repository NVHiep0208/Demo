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
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.Wayshop1.conf.MVCConf;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.RolesE;
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.entities.product_imagesE;
import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.UserModel;

@Service
public class UserService extends BaseService<UsersE>{
	@PersistenceContext
	EntityManager entityManager;
	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<UsersE> clazz() {
		return UsersE.class;
	}
	@SuppressWarnings("unchecked")
	public List<UsersE> searchUser(UserModel searchUserModel){
		try {
			String sql = "SELECT * FROM tbl_users u WHERE 1=1";
			
			// id
			if (searchUserModel.getId() > 0) {
				sql += " and u.id = " + searchUserModel.getId();
			}
			// username
			if (!StringUtils.isEmpty(searchUserModel.getUsername())) {
				sql = sql + " and u.username = '" + searchUserModel.getUsername() + "'";
			}
			// email
			if (!StringUtils.isEmpty(searchUserModel.getEmail())) {
				sql = sql + " and u.email = '" + searchUserModel.getEmail() + "'";
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<UsersE>();
		}	
	}

	public UsersE loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "'";
		List<UsersE> users = this.executeNativeSql(sql);
		if(users == null || users.size() <= 0) return null;
		return users.get(0);
	}
//	@Transactional(rollbackOn = Exception.class)
//	public void deleteUser(int id) throws Exception {
//		try {
//			UsersE userOnDb = super.getById(id);
////			new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
////				Set<product_imagesE> productImagesOnDb = productOnDb.getProduct_images();
////				for (product_imagesE pic : productImagesOnDb) {
////					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
//////					product.deleteProductImages(pic);
////					productImagesService.delete(pic);
////				}
//			
//			delete(userOnDb);
//		} catch (Exception e) {
//			throw e;
//		}
//	}
}

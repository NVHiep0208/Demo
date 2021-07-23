package com.devpro.Wayshop1.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.Wayshop1.entities.ContactE;
import com.devpro.Wayshop1.entities.product_imagesE;
import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.Product_imagesModel;

@Service
public class Product_ImagesService extends BaseService<product_imagesE> {
	@PersistenceContext
	EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<product_imagesE> searchPrImages(Product_imagesModel searchModel){
		try {
			String sql = "SELECT * FROM tbl_products_images c WHERE 1=1";
			if(searchModel != null) {
				if(searchModel.getId() > 0) {
					sql = sql + "AND c.id = " + searchModel.getId();
				}
				if(searchModel.getTitle() != null && !searchModel.getTitle().isEmpty()) {
					sql = sql + "AND c.name like '%" + searchModel.getId() + "%'";
				}				
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<product_imagesE>();
		}	
	}

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<product_imagesE> clazz() {
		// TODO Auto-generated method stub
		return product_imagesE.class;
	}	
}

package com.devpro.Wayshop1.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.RolesE;
import com.devpro.Wayshop1.entities.SaleOrderE;
import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.SaleOrderModel;

@Service
public class SaleOrderService extends BaseService<SaleOrderE>{
	@PersistenceContext
	EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<SaleOrderE> searchSaleOrder(SaleOrderModel searchSaleOrderModel){
		try {
			String sql = "SELECT * FROM tbl_saleorder c WHERE 1=1";
			if(searchSaleOrderModel != null) {
				if(searchSaleOrderModel.getId() > 0) {
					sql = sql + "AND c.id = " + searchSaleOrderModel.getId();
				}
				if(searchSaleOrderModel.getCode() != null && !searchSaleOrderModel.getCode().isEmpty()) {
					sql = sql + "AND c.name like '%" + searchSaleOrderModel.getId() + "%'";
				}				
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<SaleOrderE>();
		}	
	}

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<SaleOrderE> clazz() {
		// TODO Auto-generated method stub
		return SaleOrderE.class;
	}	
}

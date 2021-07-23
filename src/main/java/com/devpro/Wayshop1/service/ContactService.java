package com.devpro.Wayshop1.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ContactE;
import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.ContactModel;

@Service
public class ContactService extends BaseService<ContactE>{
	@PersistenceContext
	EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<ContactE> searchContact(ContactModel searchModelContact){
		try {
			String sql = "SELECT * FROM tbl_contact c WHERE 1=1";
			if(searchModelContact != null) {
				if(searchModelContact.getId() > 0) {
					sql = sql + "AND c.id = " + searchModelContact.getId();
				}
				if(searchModelContact.getName() != null && !searchModelContact.getName().isEmpty()) {
					sql = sql + "AND c.name like '%" + searchModelContact.getId() + "%'";
				}				
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<ContactE>();
		}	
	}

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<ContactE> clazz() {
		// TODO Auto-generated method stub
		return ContactE.class;
	}	
}

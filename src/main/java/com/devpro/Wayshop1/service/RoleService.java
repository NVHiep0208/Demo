package com.devpro.Wayshop1.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.RolesE;
import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.RoleModel;

@Service
public class RoleService extends BaseService<RolesE>{
	@PersistenceContext
	EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public List<RolesE> searchRole(RoleModel searchRoleModel){
		try {
			String sql = "SELECT * FROM tbl_roles c WHERE 1=1";
			if(searchRoleModel != null) {
				if(searchRoleModel.getId() > 0) {
					sql = sql + "AND c.id = " + searchRoleModel.getId();
				}
				if(searchRoleModel.getName() != null && !searchRoleModel.getName().isEmpty()) {
					sql = sql + "AND c.name like '%" + searchRoleModel.getId() + "%'";
				}				
			}
			return this.executeNativeSql(sql);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ArrayList<RolesE>();
		}	
	}

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}
	public RolesE getRoleByNameP(String role) {
        String sql = "select * from tbl_roles r where r.name ='"+role+"'";
        List<RolesE> listRole=this.executeNativeSql(sql);
        if (listRole == null || listRole.size() <= 0) {
            return null;
        }else {
            return listRole.get(0);
        }
    }
	@Override
	protected Class<RolesE> clazz() {
		// TODO Auto-generated method stub
		return RolesE.class;
	}	
}

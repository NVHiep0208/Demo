package com.devpro.Wayshop1.controller.user;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;


public class BaseController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	
	@ModelAttribute("menus")
	public String getCategories() {
		return this.buildMenu();
	}
	@ModelAttribute("userLogined")
	public UsersE getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (UsersE) userLogined;
		
		return null;
	}
	private String buildMenu() {
		StringBuilder menu = new StringBuilder();

		// danh sach menu cha
		List<CategoriesE> categories = categoriesService.getAllParents();
		
		for (CategoriesE c : categories) {
			menu.append("<li> <a>" + c.getName() + "</a>");
			
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
			}
			
			menu.append("</li>");
		}

		return menu.toString();
	}
	
	private void recursiveMenu(StringBuilder menu, Set<CategoriesE> childs) {
		menu.append("<ul>");
		for (CategoriesE c : childs) {
			menu.append("<li>" + c.getName() + "</a>");
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
				menu.append("</li>");
			} else {
				menu.append("</li>");
			}
		}
		menu.append("</ul>");
	}
//	@ModelAttribute("menu")

}

package com.devpro.Wayshop1.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.Wayshop1.controller.user.BaseController;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.service.CategoriesService;

@Controller
public class AdminInsertPCateController extends BaseController{
	@Autowired
	private CategoriesService categoriesService;
	@RequestMapping(value = { "/admin/insert_p_category"}, method = RequestMethod.GET)
	public String addPCate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("category", new CategoriesE());
		model.addAttribute("categories", categoriesService.findAll());
		return "admin/insert_p_category";
	}
	@RequestMapping(value = { "/admin/insert_p_category" }, method = RequestMethod.POST)
	public String postProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("category") CategoriesE category) throws Exception {
		if(category.getId() != null && category.getId() > 0) {
			categoriesService.edit(category);
		}
		else {
			categoriesService.saveOrUpdate(category);
		}
		return "redirect:/admin/insert_p_category";
	}
	@RequestMapping(value = { "/admin/edit-category" }, method = RequestMethod.GET)
	public String editProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int categoryId = Integer.parseInt(request.getParameter("id"));
		CategoriesE category = categoriesService.getById(categoryId);	
		model.addAttribute("categories", category);
//		model.addAttribute("product", product);
		return "admin/insert_p_category";
	}
}

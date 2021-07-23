package com.devpro.Wayshop1.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.controller.user.BaseController;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;

@Controller
public class AdminViewPCateController extends BaseController{
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	@RequestMapping(value = { "/admin/view_p_category"}, method = RequestMethod.GET)
	public String viewPCate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		return "admin/view_p_category";
	}
}

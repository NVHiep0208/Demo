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
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;

@Controller
public class AdminViewProController extends BaseController{
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	@RequestMapping(value = { "/admin/view_product"}, method = RequestMethod.GET)
	public String viewPro(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<ProductE> products = productService.findAll();
		model.addAttribute("products", productService.findAll());
		return "admin/view_product";
	}
//	// EDIT PRODUCT
//	@RequestMapping(value = { "/admin/edit_product"}, method = RequestMethod.GET)
//	public String editProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws Exception {
//		int productId = Integer.parseInt(request.getParameter("id"));
//		ProductE product = productService.getById(productId);
//		model.addAttribute("product",  product);
//		return "admin/view_product";
//	}
}

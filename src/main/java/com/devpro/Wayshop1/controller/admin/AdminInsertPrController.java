package com.devpro.Wayshop1.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.Wayshop1.controller.user.BaseController;
import com.devpro.Wayshop1.dto.AjaxResponse;
import com.devpro.Wayshop1.dto.Contact;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;

@Controller
public class AdminInsertPrController extends BaseController{
	@Autowired
	private CategoriesService categoriesService;

	@Autowired
	private ProductService productService;
//	Add
	@RequestMapping(value = { "/admin/insert_product" }, method = RequestMethod.GET)
	public String addPr(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product", new ProductE());
		model.addAttribute("categories", categoriesService.findAll());
		return "admin/insert_product";
//		redirect:/
	}
//	Edit or save
	@RequestMapping(value = { "/admin/insert_product" }, method = RequestMethod.POST)
	public String postProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") ProductE product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws Exception {
		if(product.getId() != null && product.getId() > 0) {
			productService.edit(product, productAvatar, productPictures);
		}
		else {
			productService.saveOrUpdate(product, productAvatar, productPictures);
		}
		return "redirect:/admin/insert_product";
	}
//	Edit
	@RequestMapping(value = { "/admin/edit-product" }, method = RequestMethod.GET)
	public String editProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int productId = Integer.parseInt(request.getParameter("id"));
		ProductE product = productService.getById(productId);	
		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("product", product);
		return "admin/insert_product";
	}
//	delete
	@RequestMapping(value = { "/admin/delete_product" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> deleteProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
			@RequestBody ProductE product)
//	requestbody de hung du lieu
			throws Exception {
		
		ProductE products = productService.getById(product.getId());
		if(products.getStatus()) {
			products.setStatus(false);
		}
		else {
			products.setStatus(true);
		}
		productService.deleteProduct(product.getId());
		return ResponseEntity.ok(new AjaxResponse(200,"Xóa thành công"));
	}
}

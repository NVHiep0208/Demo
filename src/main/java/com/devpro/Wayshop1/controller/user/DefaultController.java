package com.devpro.Wayshop1.controller.user;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.model.CategoriesModel;
import com.devpro.Wayshop1.model.ProductSearchModel;
import com.devpro.Wayshop1.dto.Register;
import com.devpro.Wayshop1.dto.search.ProductSearch;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.RolesE;
import com.devpro.Wayshop1.entities.SaleOrderE;
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;
import com.devpro.Wayshop1.service.RoleService;
import com.devpro.Wayshop1.service.SaleOrderService;
import com.devpro.Wayshop1.service.UserService;



@Controller
public class DefaultController extends BaseController{
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private SaleOrderService saleService;
	
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	@RequestMapping(value = { "/index","/home","trangchu" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<CategoriesE> categories = categoriesService.searchCate(null);
//		for (CategoriesE categoriesE : categories) {
//			System.out.println(categoriesE.getName());
//		}
		ProductSearch productSearch = new ProductSearch();
		productSearch.buildPaging(request);
		List<ProductE> products = productService.findAll();
		model.addAttribute("products", products);
//		model.addAttribute("menus",buildMenu());
		List<CategoriesE> categories1 = categoriesService.findAll();
		model.addAttribute("categories", categoriesService.findAll());
		return "user/index";
	}
	@RequestMapping(value = { "/wishlist" }, method = RequestMethod.GET)
	public String wishlist(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		return "user/wishlist";
	}
	@RequestMapping(value = { "/service" }, method = RequestMethod.GET)
	public String service(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
//		List<SaleOrderE> sales = saleService.searchSaleOrder(null);
//		for (SaleOrderE saleOrderE : sales) {
//			System.out.println(saleOrderE.getCode());
//		}
		return "user/service";
	}
	@RequestMapping(value = { "/about" }, method = RequestMethod.GET)
	public String about(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		return "user/about";
	}
	@RequestMapping(value = { "/my-account" }, method = RequestMethod.GET)
	public String myAccount(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		return "user/my-account";
	}
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET)
	public String checkOut(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		return "user/checkout";
	}
//	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
//	public String register(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws Exception {
//		model.addAttribute("CurrentYear", "2021");
//		model.addAttribute("register", new Register());
//		List<CategoriesE> categories = categoriesService.findAll();
//		model.addAttribute("categories", categories);;
//		return "user/register";
//	}
	/*
	 * @RequestMapping(value = { "/register-ajax" }, method = RequestMethod.POST)
	 * public ResponseEntity<Map<String, Object>> postcontactajax(final ModelMap
	 * model, final HttpServletRequest request, final HttpServletResponse response,
	 * 
	 * @RequestBody Register register) // requestbody de hung du lieu throws
	 * Exception { model.addAttribute("CurrentYear", "2021");
	 * System.out.println("Contact[firstName]: " +register.getFirstName());
	 * System.out.println("Contact[lastName]: " +register.getLastName());
	 * System.out.println("Contact[Email]: " +register.getEmail());
	 * System.out.println("Contact[Password]: " +register.getPassword());
	 * System.out.println("Contact[ConfirmPassword]: "
	 * +register.getConfirmPassword()); Map<String, Object> jsonResult = new
	 * HashMap<String, Object>(); jsonResult.put("statusCode", 200);
	 * jsonResult.put("data", "TC"); return ResponseEntity.ok(jsonResult); }
	 */
}

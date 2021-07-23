package com.devpro.Wayshop1.controller.admin;

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

import com.devpro.Wayshop1.controller.user.BaseController;
import com.devpro.Wayshop1.dto.AjaxResponse;
import com.devpro.Wayshop1.dto.Category;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.RoleService;
import com.devpro.Wayshop1.service.UserService;

@Controller
public class AdminInsertAdController extends BaseController{
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value = { "/admin/add_users"}, method = RequestMethod.GET)
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("user", new UsersE());
		model.addAttribute("roles", roleService.findAll());
		return "admin/add_users";
	}
	//edit
	@RequestMapping(value = { "/admin/add_users"}, method = RequestMethod.POST)
	public String postUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			, @ModelAttribute("user") UsersE user)
			throws Exception {
		model.addAttribute("user", new UsersE());
		model.addAttribute("roles", roleService.findAll());
		return "admin/add_users";
	}
//	@RequestMapping(value = { "/admin/delete_user" }, method = RequestMethod.POST)
//	public ResponseEntity<AjaxResponse> deleteUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
//			@RequestBody UsersE user)
////	requestbody de hung du lieu
//			throws Exception {
//		
//		UsersE users = userService.getById(user.getId());
//		if(users.getStatus()) {
//			users.setStatus(false);
//		}
//		else {
//			users.setStatus(true);
//		}
//		userService.deleteUser(user.getId());
//		return ResponseEntity.ok(new AjaxResponse(200,"Xóa thành công"));
//	}
	@RequestMapping(value = { "/admin/insert_slide"}, method = RequestMethod.GET)
	public String addSlide(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/insert_slide";
	}
	@RequestMapping(value = { "/admin/insert_coupon"}, method = RequestMethod.GET)
	public String addCoup(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/insert_coupon";
	}
	@RequestMapping(value = { "/admin/insert_category"}, method = RequestMethod.GET)
	public String addCate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("category", new Category());
		return "admin/insert_category";
	}
	@RequestMapping(value = { "/admin/add_category" }, method = RequestMethod.POST)
	public String addCategory(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
			@ModelAttribute("category") Category category)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		System.out.println("Category[Name]: " +category.getName());
		System.out.println("Category[Description]: " +category.getDescription());
		return "admin/insert_category";
//		return ResponseEntity.ok(new AjaxResponse(200, contact));
	}
}

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
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.UserService;

@Controller
public class AdminViewAdController extends BaseController{
	@Autowired
	private UserService userService;
	@RequestMapping(value = { "/admin/view_users"}, method = RequestMethod.GET)
	public String viewAd(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<UsersE> users = userService.findAll();
		model.addAttribute("users", users);
		return "admin/view_users";
	}
	@RequestMapping(value = { "/admin/view_category"}, method = RequestMethod.GET)
	public String viewCate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/view_category";
	}
	@RequestMapping(value = { "/admin/view_coupons"}, method = RequestMethod.GET)
	public String viewCoup(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/view_coupons";
	}
	@RequestMapping(value = { "/admin/view_customers"}, method = RequestMethod.GET)
	public String viewCus(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/view_customers";
	}
	@RequestMapping(value = { "/admin/view_orders"}, method = RequestMethod.GET)
	public String viewOder(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/view_orders";
	}
	@RequestMapping(value = { "/admin/view_slides"}, method = RequestMethod.GET)
	public String viewSlide(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/view_slides";
	}
}

package com.devpro.Wayshop1.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.controller.user.BaseController;

@Controller
public class AdminController extends BaseController{
	@RequestMapping(value = { "/Admin", "/dashboard", "/quantri","/admin"}, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/Admin";
	}
}

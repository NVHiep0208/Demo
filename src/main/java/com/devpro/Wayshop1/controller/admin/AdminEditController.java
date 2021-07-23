package com.devpro.Wayshop1.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.controller.user.BaseController;

@Controller
public class AdminEditController extends BaseController{
	@RequestMapping(value = { "/admin/edit_admin"}, method = RequestMethod.GET)
	public String edit(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/edit_admin";
	}
	@RequestMapping(value = { "/admin/edit_css"}, method = RequestMethod.GET)
	public String css(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/edit_css";
	}
	@RequestMapping(value = { "/admin/edit_slide"}, method = RequestMethod.GET)
	public String slide(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "admin/edit_slide";
	}
}

package com.devpro.Wayshop1.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.devpro.Wayshop1.dto.AjaxResponse;
import com.devpro.Wayshop1.dto.Contact;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ContactE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ContactService;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;
	@RequestMapping(value = { "/contact-us" }, method = RequestMethod.GET)
	public String contactus(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		model.addAttribute("contact", new Contact());
		List<ContactE> contact = contactService.searchContact(null);
		for (ContactE contactE : contact) {
			System.out.println(contactE.getName());
		}
		return "user/contact-us";
	}
	@RequestMapping(value = { "/contact1" }, method = RequestMethod.POST)
	public String postcontact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
			@ModelAttribute("contact") Contact contact)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		System.out.println("Contact[Name]: " +contact.getName());
		System.out.println("Contact[Email]: " +contact.getEmail());
		System.out.println("Contact[Object]: " +contact.getSubject());
		System.out.println("Contact[Content]: " +contact.getMessage());
		return "user/contact-us";
//		return ResponseEntity.ok(new AjaxResponse(200, contact));
	}
//	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
//	public ResponseEntity<AjaxResponse> postcontactajax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
//			@RequestBody Contact contact)
//			throws Exception {
//		model.addAttribute("CurrentYear", "2021");
//		System.out.println("Contact[Name]: " +contact.getName());
//		System.out.println("Contact[Email]: " +contact.getEmail());
//		System.out.println("Contact[Object]: " +contact.getObject());
//		System.out.println("Contact[Content]: " +contact.getContent());
//		return ResponseEntity.ok(new AjaxResponse(200, contact));
//	}
	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> postcontactajax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, 
			@RequestBody Contact contact)
//	requestbody de hung du lieu
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		System.out.println("Contact[Name]: " +contact.getName());
		System.out.println("Contact[Email]: " +contact.getEmail());
		System.out.println("Contact[subject]: " +contact.getSubject());
		System.out.println("Contact[message]: " +contact.getMessage());
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("data", "TC");
		return ResponseEntity.ok(jsonResult);
	}
}

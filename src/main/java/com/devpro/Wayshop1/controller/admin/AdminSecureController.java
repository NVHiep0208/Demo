package com.devpro.Wayshop1.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.controller.user.BaseController;
import com.devpro.Wayshop1.dto.Register;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.RolesE;
import com.devpro.Wayshop1.entities.UsersE;
import com.devpro.Wayshop1.model.UserModel;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.MailService;
import com.devpro.Wayshop1.service.RoleService;
import com.devpro.Wayshop1.service.UserService;
import com.devpro.Wayshop1.util.GeneratePassword;

@Controller
public class AdminSecureController extends BaseController{

	@Autowired
//	UserRepo userRepo;
	RoleService rolesService;
	@Autowired
	UserService userService;
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	MailService mailService;
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "user/login";
	}
	@RequestMapping(value= {"/success"})
    public void loginPageRedirect(HttpServletRequest request, HttpServletResponse response, Authentication authResult)
            throws IOException, ServletException{
        UsersE u = (UsersE) authResult.getPrincipal();
        String role = u.getRoles().get(0).getName();

        if (role.contains("Admin")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/Admin"));
        } else {
//            HttpSession httpSession = request.getSession();
//
//            // dinh nghia gio hang
//            Cart cart = null;
//
//            // kiem tra xem da co gio hang tren session
//            if (httpSession.getAttribute("cart") != null) {
//                // neu da ton tai gio hang thi lay ra tu session
//                cart = (Cart) httpSession.getAttribute("cart");
//            } else {
//                cart = new Cart(); // khoi tao gio hang neu chua co
//                httpSession.setAttribute("cart", cart); // luu gio hang tren session
//            }
//            getTotalPrice(request);
//            double totalPr=getTotalPrice(request);
//            httpSession.setAttribute("totalItems", getTotalItems(request));
//            httpSession.setAttribute("totalPrice", totalPr);
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/index"));
        }
    }
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String register(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);;
		return "user/register";
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
    public String addAccount(final ModelMap model,
            final HttpServletRequest request, 
            final HttpServletResponse response)
            throws Exception {

        //String displayName = request.getParameter("display_name");
        String email = request.getParameter("email");

        UserModel us = new UserModel();
        us.setEmail(email);
        if (userService.searchUser(us).size() > 0) {
            model.addAttribute("error", "Email đã tồn tại!");
            return "user/register";
        }

        String userName = request.getParameter("username");
        
        if(userName.isEmpty()) {
            model.addAttribute("username", "Bạn phải nhập tên đăng nhập !");
            return "user/register";
        }
        String password = request.getParameter("password");
        if(password.isEmpty()) {
            model.addAttribute("pass", "You have not entered your PASSWORD !");
            return "user/register";
        }
        String confirmPassword = request.getParameter("confirmPassword");

        UsersE user = new UsersE();
        user.setUsername(userName);;
        if (password.equals(confirmPassword)) {
            user.setPassword(new BCryptPasswordEncoder(4).encode(password));
        }else {
            model.addAttribute("repass", "Reconfirm wrong password!");
            return "user/register";
        }
        user.setEmail(email);

        //user.setDisplayName(displayName);

        // Role
        RolesE role = rolesService.getRoleByNameP("GUEST");
        user.addRoles(role);
        user.setCreatedDate(new Date());
//        user.setBackground("user/default_background/default_background.png");
//        user.setAvatar("user/default_avatar/—Pngtree—cat default avatar_5416936.png");
        userService.saveOrUpdate(user);

        model.addAttribute("registerSuccess", "Register Successfully!");
        return "redirect:/login";
    }
	@RequestMapping(value = { "/forgot/password" }, method = RequestMethod.GET)
	public String forgotpass(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);;
		return "user/forgot_password";
	}
	@RequestMapping(value = { "/password/reset" }, method = RequestMethod.POST)
	public String resetPassword(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		String emailResetPass = request.getParameter("emailResetPass");
		// reset pass
		UserModel us = new UserModel();
        us.setEmail(emailResetPass);
		UsersE uResetPass = userService.searchUser(us).get(0);
		if (uResetPass == null) {
			model.addAttribute("messageReSetPass", "Không tồn tại tài khoản có email: " + emailResetPass);
			return "user/forgot_password";
		}
		String newPass = String.valueOf(System.currentTimeMillis() / 100);
		uResetPass.setPassword(GeneratePassword.encodePassword(newPass));
		userService.saveOrUpdate(uResetPass);

		// send mail
		mailService.sendEmailResetPass(emailResetPass, newPass);

		model.addAttribute("messageReSetPass", "Reset password thành công, vui lòng kiếm tra email của bạn!");
		return "user/forgot_password";
	}
}

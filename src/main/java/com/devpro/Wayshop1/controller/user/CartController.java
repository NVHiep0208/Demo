package com.devpro.Wayshop1.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.dto.Cart;
import com.devpro.Wayshop1.dto.CartItem;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;

@Controller
public class CartController extends BaseController {

	@Autowired
	ProductService productService;
	@Autowired
	CategoriesService categoriesService;
	
	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<ProductE> products = productService.findAll();
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		model.addAttribute("CurrentYear", "2021");
		HttpSession httpSession = request.getSession();

		Cart cart = null;
		if (httpSession.getAttribute("cart") != null) {
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart();
			httpSession.setAttribute("cart", cart);
		}
		List<CartItem> cartItems = cart.getCartItems();

		model.addAttribute("cartItems", cartItems);
		return "user/cart";
	}
	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		// lay doi tuong session
		// session tuong tu nhu la 1 map luu tren ram cua server
		HttpSession httpSession = request.getSession();
		
		// dinh nghia gio hang
		Cart cart = null;
		
		// kiem tra xem da co gio hang tren session
		if (httpSession.getAttribute("cart") != null) {
			// neu da ton tai gio hang thi lay ra tu session
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart(); // khoi tao gio hang neu chua co
			httpSession.setAttribute("cart", cart); // luu gio hang tren session
		}

		// kiem tra item da co trong gio hang chua
		// lay tat ca cac san pham co trong gio hang
		List<CartItem> cartItems = cart.getCartItems();
		
		// bat dau kiem tra xem da ton tai chua
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		// neu khong ton tai san pham trong gio hang
		if (!isExists) {
			// lay thon tin san pham tu db
			ProductE productInDb = productService.getById(cartItem.getProductId());
			
			// thiet lap cac gia tri khac cua item
			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			cartItem.setProductAvatar(productInDb.getAvatar());
			cartItem.setProductSeo(productInDb.getSeo());
			// add san pham vao trong gio hang
			cart.getCartItems().add(cartItem);
		}

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		printInfo(request);
		
		httpSession.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	private void printInfo(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			System.out.println(item.getProductName() + ":" + item.getQuanlity());
		}
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	
}

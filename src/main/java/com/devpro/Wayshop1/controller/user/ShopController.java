package com.devpro.Wayshop1.controller.user;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Wayshop1.dto.search.ProductSearch;
import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;
import com.devpro.Wayshop1.entities.product_imagesE;
import com.devpro.Wayshop1.model.ProductSearchModel;
import com.devpro.Wayshop1.service.CategoriesService;
import com.devpro.Wayshop1.service.ProductService;
import com.devpro.Wayshop1.service.Product_ImagesService;


@Controller
public class ShopController extends BaseController{
	@Autowired
	private Product_ImagesService PrImagesService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET)
	public String shop(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
//		model.addAttribute("menus",buildMenu());
		ProductSearch productSearch = new ProductSearch();
		productSearch.buildPaging(request);
		List<ProductE> products = productService.findAll();
		model.addAttribute("products", products);
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("productSearch", productSearch);
		return "user/shop";
	}
	@RequestMapping(value = { "/shop-detail/{seoPath}" }, method = RequestMethod.GET)
	public String shopDetail(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			, @PathVariable("seoPath") String seoPath)
			throws Exception {
		model.addAttribute("CurrentYear", "2021");
//		ProductE product = productService.getById(Integer.parseInt(request.getParameter("id")));
		ProductSearchModel sm = new ProductSearchModel();
		sm.setProductSeo(seoPath);
		ProductE product = productService.searchProduct(sm).get(0);
		List<CategoriesE> categories = categoriesService.findAll();
		
//		List<product_imagesE> listImages = PrImagesService.searchPrImages(product);
//		if (listImages != null)
//			model.addAttribute("listImages", listImages);
		
		
		model.addAttribute("categories", categories);
		model.addAttribute("product", product);
		return "user/shop-detail";
	}
	// search categoriesSeo
	@RequestMapping(value = { "/shop/{categorySeo}" }, method = RequestMethod.GET)
	public String category(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			, @PathVariable("categorySeo") String categorySeo)
			throws IOException {
		ProductSearchModel sm = new ProductSearchModel();
		sm.setCategorySeo(categorySeo);
		List<ProductE> products = productService.searchProduct(sm);
		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("products", products);
		return "user/shop";
	}
	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
	public String search(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String searchText = request.getParameter("searchText");		
		ProductSearchModel sm = new ProductSearchModel();
		sm.setSearchText(searchText);
		List<ProductE> products = productService.searchProduct(sm);
		List<CategoriesE> categories = categoriesService.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		return "user/shop";
	}
}

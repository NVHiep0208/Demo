package com.devpro.Wayshop1.dto;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.service.CategoriesService;

public class Product {
	private String id;
	private String title;
	private String p_category,type,label;
	private int price;
	private int priceSale;
	private int quantity;
	private String key_word;
	private String image;
	private String description;
	private String shortDescription;
	private CategoriesE categories;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public CategoriesE getCategories() {
		return categories;
	}

	public void setCategories(CategoriesE categories) {
		this.categories = categories;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPriceSale() {
		return priceSale;
	}

	public void setPriceSale(int priceSale) {
		this.priceSale = priceSale;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getKey_word() {
		return key_word;
	}

	public void setKey_word(String key_word) {
		this.key_word = key_word;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public Product(String title, String p_category, String type, String label, int price, int priceSale, int quantity,
			String key_word, String image, String description, String shortDescription) {
		super();
		this.title = title;
		this.p_category = p_category;
		this.type = type;
		this.label = label;
		this.price = price;
		this.priceSale = priceSale;
		this.quantity = quantity;
		this.key_word = key_word;
		this.image = image;
		this.description = description;
		this.shortDescription = shortDescription;
	}

	public Product() {
		
	}
}

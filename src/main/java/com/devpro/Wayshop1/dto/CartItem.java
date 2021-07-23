package com.devpro.Wayshop1.dto;

import java.math.BigDecimal;

public class CartItem {
	private int productId;
	private String productName;
	private int quanlity;
	private BigDecimal priceUnit;
	private String productAvatar;
	private String productSeo;

	public String getProductAvatar() {
		return productAvatar;
	}

	public void setProductAvatar(String productAvatar) {
		this.productAvatar = productAvatar;
	}

	public String getProductSeo() {
		return productSeo;
	}

	public void setProductSeo(String productSeo) {
		this.productSeo = productSeo;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	public BigDecimal getPriceUnit() {
		return priceUnit;
	}

	public void setPriceUnit(BigDecimal priceUnit) {
		this.priceUnit = priceUnit;
	}

	
}

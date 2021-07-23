package com.devpro.Wayshop1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table( name = "tbl_products_images")
public class product_imagesE extends BaseEntity{
	@Column(name = "title", nullable = false)
	private String title;
	
	@Column(name = "path", nullable = false)
	private String path;
	
	@ManyToOne(fetch = FetchType.EAGER ) //  khi lay 1 product se lay ca 1 bo images cua product
	@JoinColumn(name = "product_id") // noi vao khoa ngoai
	private ProductE products;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public ProductE getProducts() {
		return products;
	}

	public void setProducts(ProductE products) {
		this.products = products;
	}
	
	

}

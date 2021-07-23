package com.devpro.Wayshop1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder_products")
public class Saleorders_productsE extends BaseEntity{
	
	@ManyToOne(fetch = FetchType.EAGER ) //  khi lay 1 product se lay ca 1 category cua product
	@JoinColumn(name = "saleorder_id") // noi vao khoa ngoai
	private SaleOrderE saleorders;
	
	@Column(name = "product_id", nullable = false)
	private Integer product_id;
	
	@Column(name = "quality", nullable = false)
	private Integer quality;

	public SaleOrderE getSaleorders() {
		return saleorders;
	}

	public void setSaleorders(SaleOrderE saleorders) {
		this.saleorders = saleorders;
	}

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	
}

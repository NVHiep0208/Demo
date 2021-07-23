package com.devpro.Wayshop1.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.devpro.Wayshop1.entities.CategoriesE;
import com.devpro.Wayshop1.entities.ProductE;

@Entity
@Table(name = "tbl_category")
public class CategoriesE extends BaseEntity {
	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@Column(name = "description", length = 100, nullable = false)
	private String description;

	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "categories", fetch = FetchType.LAZY)
	private Set<ProductE> products = new HashSet<ProductE>();
	// mappedBy: properties của Categories bên product
	// khi dinh nghia oneToMany thi luon phai dinh nghia 2 ham quan ly list	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "category")
//	@JoinColumn(name = "parent_id")
	private Set<CategoriesE> childs = new HashSet<CategoriesE>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	private CategoriesE category;
//	@OneToMany(fetch = FetchType.EAGER)
//	@JoinColumn(name = "parent_id")
//	private Set<CategoriesE> childs = new HashSet<CategoriesE>();
	
	public void addProduct(ProductE product) {
		products.add(product);
		product.setCategories(this);
	}
	public void deleteProduct(ProductE product) {
		products.remove(product);
		product.setCategories(null);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}
	public Set<ProductE> getProducts() {
		return products;
	}
	public void setProducts(Set<ProductE> products) {
		this.products = products;
	}
	public Set<CategoriesE> getChilds() {
		return childs;
	}
	public void setChilds(Set<CategoriesE> childs) {
		this.childs = childs;
	}
	public CategoriesE getCategory() {
		return category;
	}
	public void setCategory(CategoriesE category) {
		this.category = category;
	}
	
}

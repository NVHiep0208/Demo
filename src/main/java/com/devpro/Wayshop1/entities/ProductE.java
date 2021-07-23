package com.devpro.Wayshop1.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_products")
public class ProductE extends BaseEntity{
	@Column(name = "title", length=1000, nullable = false)
	private String title;

	@Column(name = "price", precision = 13, scale = 2, nullable = false)
	private BigDecimal price;
	
	@Column(name = "price_sale", precision = 13, scale = 2, nullable = true)
	private BigDecimal priceSale;
	
	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	
	@Column(name = "short_description", length =3000,  nullable =false )
	private String shortDescription;
	
	@Lob
	@Column(name = "detail_description",columnDefinition= "LONGTEXT", nullable =false  )
	private String detailDescription;
	
	@Column(name = "avatar", nullable = true)
	private String avatar;
	
	@Column(name = "is_hot", nullable = true)
	private Boolean is_hot = Boolean.TRUE;
	
	@Column (name = "quantity", nullable = false)
	private Integer quantity;
	@Column (name = "key_word", nullable = false, length = 20)
	private String key_word;
	@Column (name = "sold", nullable = true)
	private Integer sold;
	@ManyToOne(fetch = FetchType.EAGER ) //  khi lay 1 product se lay ca 1 category cua product
	@JoinColumn(name = "category_id") // noi vao khoa ngoai
	private CategoriesE categories;
//	categories = value của mappedBy
//	EAGER & LAZY:LAZY dùng khi 1 id_category có nhiều sản phẩm ->> Lấy tất cả sản phẩm đó
	
	// Images products
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "products", fetch = FetchType.LAZY)
	private Set<product_imagesE> product_images = new HashSet<product_imagesE>();			
	
	public void addImages(product_imagesE image) {
		product_images.add(image);
		image.setProducts(this);
	}
	public void deleteImages(product_imagesE image) {
		product_images.remove(image);
		image.setProducts(null);
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPriceSale() {
		return priceSale;
	}

	public void setPriceSale(BigDecimal priceSale) {
		this.priceSale = priceSale;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDetailDescription() {
		return detailDescription;
	}

	public void setDetailDescription(String detailDescription) {
		this.detailDescription = detailDescription;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Boolean getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(Boolean is_hot) {
		this.is_hot = is_hot;
	}
	
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getKey_word() {
		return key_word;
	}
	public void setKey_word(String key_word) {
		this.key_word = key_word;
	}
	
	public Integer getSold() {
		return sold;
	}
	public void setSold(Integer sold) {
		this.sold = sold;
	}
	public CategoriesE getCategories() {
		return categories;
	}

	public void setCategories(CategoriesE categories) {
		this.categories = categories;
	}
	public Set<product_imagesE> getProduct_images() {
		return product_images;
	}
	public void setProduct_images(Set<product_imagesE> product_images) {
		this.product_images = product_images;
	}
	
}
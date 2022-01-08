package npn.devpro.shop16.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import java.lang.String;

@Entity
@Table(name = "tbl_products")
public class Products extends BaseEntity {
	@Column(name = "title", length = 1000, nullable = false)
	private String title;

	@Column(name = "price", precision = 13, scale = 2, nullable = true)
	private BigDecimal price;

	@Column(name = "price_sale", precision = 13, scale = 2, nullable = false)
	private BigDecimal priceSale;

	@Column(name = "detail_description", columnDefinition = "LONGTEXT", nullable = false)
	private String detailDescription;

	@Column(name = "brand", length = 100, nullable = true)
	private String brand;

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDetailDescription() {
		return detailDescription;
	}

	public void setDetailDescription(String detailDescription) {
		this.detailDescription = detailDescription;
	}

	public Set<Product_Image> getProduct_Images() {
		return product_Images;
	}

	public void setProduct_Images(Set<Product_Image> product_Images) {
		this.product_Images = product_Images;
	}

	@Column(name = "avatar", length = 200, nullable = true)
	private String avatar;

	@Column(name = "seo", length = 1000, nullable = false)
	private String seo;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id") // định nghĩa khóa ngoài bằng @JoinCollumn
	private Categories categories;

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	// mappedBy là tên cả property liên quan với định nghĩa Many to one nào
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "products", fetch = FetchType.LAZY)
	private Set<Product_Image> product_Images = new HashSet<Product_Image>();

	public void addProductImages(Product_Image productImage) {
		productImage.setProducts(this);
		product_Images.add(productImage);
	}

	public void deleteProductImages(Product_Image productImage) {
		productImage.setProducts(null);
		product_Images.remove(productImage);
	}
	
	
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "products", fetch = FetchType.LAZY)
	private Set<SaleOderProduct> saleOder_Products =  new HashSet<SaleOderProduct>();
	
	public void addSaleOrderProduct(SaleOderProduct saleOderProduct) {
		saleOderProduct.setProduct(this);
		saleOder_Products.add(saleOderProduct);
	}
	
	public void deleteProductImages(SaleOderProduct saleOderProduct) {
		saleOderProduct.setProduct(null);
		saleOder_Products.remove(saleOderProduct);
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

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

}

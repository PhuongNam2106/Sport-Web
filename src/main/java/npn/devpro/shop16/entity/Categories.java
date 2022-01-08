package npn.devpro.shop16.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import javax.persistence.Table;

import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name="tbl_category")
public class Categories extends BaseEntity{
	@Column(name = "name", length = 100, nullable = false)
	private String name;
	
	@Column(name = "description", length = 100, nullable = false)
	private String description;
	
	@Column(name = "seo", length = 100, nullable = true)
	private String seo;
	
	//mappedBy là tên cả property liên quan với định nghĩa Many to one nào
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "categories", fetch = FetchType.LAZY)
	private Set<Products> products = new HashSet<Products>();

	public void addProduct(Products product)
	{
		this.products.add(product); // thêm product vào trong Set<Product>
		// product phải thuộc đối tượng category đang xét(đang call vào hàm này)
		product.setCategories(this);
	}
	 
	public void deleteProduct(Products product)
	{
		this.products.remove(product); // thêm product vào trong Set<Product>
		// product phải thuộc đối tượng category đang xét(đang call vào hàm này)
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

	public Set<Products> getProducts() {
		return products;
	}

	public void setProducts(Set<Products> products) {
		this.products = products;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}
	
	
}

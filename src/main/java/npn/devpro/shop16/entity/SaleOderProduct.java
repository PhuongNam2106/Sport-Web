package npn.devpro.shop16.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;




@Entity
@Table(name = "tbl_saleorder_products")
public class SaleOderProduct extends BaseEntity{
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Products products;
	
	@Column(name = "quality")
	private Integer quality;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private SaleOder saleOrder;

	public Products getProduct() {   
		return products;
	}

	public void setProduct(Products products) {
		this.products = products;
	}

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	public SaleOder getSaleOrder() {
		return saleOrder;
	}

	public void setSaleOrder(SaleOder saleOrder) {
		this.saleOrder = saleOrder;
	}
		
}

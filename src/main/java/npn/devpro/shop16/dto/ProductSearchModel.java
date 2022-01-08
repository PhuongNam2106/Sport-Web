package npn.devpro.shop16.dto;

public class ProductSearchModel extends BaseSearchModel {

	// tÃ¬m theo keyword
	public String keyword;

	// tÃ¬m theo category
	public Integer categoryId;

	public String seo;

	public Boolean isHot;

	public String getKeyword() {
		return keyword;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public String getSeo() {
		return seo;
	}
}
package npn.devpro.shop16.dto;

public class ContactSearchModel extends BaseSearchModel{
	// tÃ¬m theo keyword
		public String keyword;

		// tÃ¬m theo category
		public Integer categoryId;
		public Integer customerId;
		
		public String customerName;

		public String getKeyword() {
			return keyword;
		}

		public String getCustomerName() {
			return customerName;
		}


		public Integer getCustomerId() {
			return customerId;
		}

		public Integer getCategoryId() {
			return categoryId;
		}
		
}

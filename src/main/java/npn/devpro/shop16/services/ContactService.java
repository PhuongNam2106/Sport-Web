package npn.devpro.shop16.services;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import npn.devpro.shop16.dto.ContactSearchModel;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.entity.ContactSQL;
import npn.devpro.shop16.entity.Products;



@Service
public class ContactService extends BaseService<ContactSQL> {

	@Override
	protected Class<ContactSQL> clazz() {
		// TODO Auto-generated method stub
		return ContactSQL.class;
	}
	
	public PagerData<ContactSQL> search(ContactSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_contact  WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm theo id
			if(searchModel.customerId != null) {
				sql += " and id = " + searchModel.customerId;
			}
			
			//tìm theo tên
			if (!StringUtils.isEmpty(searchModel.customerName)) {
				sql += " and customer_name = '" + searchModel.customerName + "'";
			}
			
			// tim kiem san pham theo seachText
			/*
			 * if (!StringUtils.isEmpty(searchModel.keyword)) { sql +=
			 * " and (p.title like '%" + searchModel.keyword + "%'" +
			 * " or p.detail_description like '%" + searchModel.keyword + "%'" +
			 * " or p.short_description like '%" + searchModel.keyword + "%')"; }
			 */
		}

		// chi lay san pham chua xoa
//				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
}

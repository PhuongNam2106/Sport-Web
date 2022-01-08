package npn.devpro.shop16.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.dto.UserSearchModel;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.entity.User;


@Service
public class UserService extends BaseService<User> {
	
	@Override
	protected Class<User> clazz() {
		return User.class;
	}

	public User loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "'";
		List<User> users = this.executeByNativeSQL(sql, 0).getData();
		
		if(users == null || users.size() <= 0) return null;
		return users.get(0);
	}
	
	public PagerData<User> search(UserSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_users u WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm theo category
			if(searchModel.Id != null) {
				sql += " and id = " + searchModel.Id;
			}
		
			//tìm theo username
			if (!StringUtils.isEmpty(searchModel.userName)) {
				sql += " and u.username = '" + searchModel.userName + "'";
			}
			
			//tìm theo customer name
			if (!StringUtils.isEmpty(searchModel.customerName)) {
				sql += " and u.customer_name = '" + searchModel.customerName + "'";
			}

			
			
			
		}

		// chi lay san pham chua xoa
//				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
}

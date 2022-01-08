package npn.devpro.shop16.services;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import npn.devpro.shop16.dto.CategorySearchModel;

import npn.devpro.shop16.entity.Categories;


@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}
	
	public PagerData<Categories> search(CategorySearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_contact  WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm theo id
			if(searchModel.categoryId != null) {
				sql += " and id = " + searchModel.categoryId;
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

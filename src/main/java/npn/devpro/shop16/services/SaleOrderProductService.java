package npn.devpro.shop16.services;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import npn.devpro.shop16.dto.SaleOrderSearchModel;
import npn.devpro.shop16.entity.SaleOderProduct;

@Service
public class SaleOrderProductService extends BaseService<SaleOderProduct>{

	@Override
	protected Class<SaleOderProduct> clazz() {
		// TODO Auto-generated method stub
		return SaleOderProduct.class;
	}
	 public PagerData<SaleOderProduct> search(SaleOrderSearchModel searchModel) {

	        // khởi tạo câu lệnh
	        String sql = "SELECT * FROM tbl_saleorder sp WHERE 1=1";

	        if (searchModel != null) {
	            //tìm theo saleorder_id
	            if (!StringUtils.isEmpty(searchModel.getSaleOrderId())) {
	                sql += " and sp.saleorder_id = '" + searchModel.getSaleOrderId() + "'";
	            }

	            //tìm theo Id
	            if (!StringUtils.isEmpty(searchModel.getId())) {
	                sql += " and sp.id = '" + searchModel.getId() + "'";
	            }
	            if (!StringUtils.isEmpty(searchModel.keyword)) {
	                sql += " and (sp.saleorder_id like '%" + searchModel.keyword  + "%')";
	            }
	        }

	        return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
	    }
}

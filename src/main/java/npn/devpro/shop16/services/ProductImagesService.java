package npn.devpro.shop16.services;

import org.springframework.stereotype.Service;

import npn.devpro.shop16.entity.Product_Image;
@Service
public class ProductImagesService extends BaseService<Product_Image>{

	@Override
	protected Class<Product_Image> clazz() {
		// TODO Auto-generated method stub
		return Product_Image.class;
	}

}

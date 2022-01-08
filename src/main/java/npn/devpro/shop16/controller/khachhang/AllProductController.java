package npn.devpro.shop16.controller.khachhang;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.CategorySearchModel;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.entity.Categories;
import npn.devpro.shop16.entity.ContactSQL;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.services.CategoriesService;
import npn.devpro.shop16.services.PagerData;
import npn.devpro.shop16.services.ProductService;

@Controller
public class AllProductController extends BaseController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;

	@RequestMapping(value = { "/allproduct" }, method = RequestMethod.GET)
	public String contact(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
//		model.addAttribute("categories", categoriesService.findAll());
//		ProductSearchModel searchModel = new ProductSearchModel();
//		searchModel.keyword = request.getParameter("keyword");
//		searchModel.setPage(getCurrentPage(request));
//		searchModel.categoryId = super.getInteger(request, "categoryId");
//
//		model.addAttribute("productWithPaging", productService.search(searchModel));
//		model.addAttribute("searchModel", searchModel);
//
//		List<Categories> categories;
//		categories = categoriesService.findAll();
//		model.addAttribute("categories", categories);
		
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.categoryId = super.getInteger(request, "categoryId");

		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);

		return "khachhang/tatcasp";
	}

	//
	@RequestMapping(value = { "/detail/product/{productSeo}" }, method = RequestMethod.GET)
	public String detail_product(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("productSeo") String productSeo) throws IOException {

		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.seo = productSeo;

		PagerData<Products> products = productService.search(searchModel);
		Products product = products.getData().get(0);
		model.addAttribute("product", product);
		return "khachhang/chitiet";
	}

	
//	@RequestMapping(value = { "/category/{seo}" }, method = RequestMethod.GET)
//	public String category(final Model model, final HttpServletRequest request, final HttpServletResponse response,
//			@PathVariable("seo") String seo) throws IOException {
//
//		CategorySearchModel categorySearchModel = new CategorySearchModel();
//		categorySearchModel.setSeo(seo);
//		
//		CategorySearchModel searchModel = new CategorySearchModel();
//		model.addAttribute("categoryList", categoriesService.search(searchModel));
//		
//		ProductSearchModel PrSearchModel = new ProductSearchModel();
//		model.addAttribute("productList", productService.search(PrSearchModel));
//		
//		Categories categories = categoriesService.search(categorySearchModel).getData().get(0);
//		model.addAttribute("CurrentCategory", categories);
//		
//		ProductSearchModel productSearchModel = new ProductSearchModel();
//		productSearchModel.categoryId = categories.getId();
//		
//		model.addAttribute("productsData", productService.search(productSearchModel));
//
//		// MVC được cấu hình chỉ định vào thư mục /src/main/webapp/WEB-INF/views
//		// để tìm các views // /WEB-INF/views/user/index.jsp
//
//		return "khachhang/category"; // -> đường dẫn tới View.
//
//	}	

}

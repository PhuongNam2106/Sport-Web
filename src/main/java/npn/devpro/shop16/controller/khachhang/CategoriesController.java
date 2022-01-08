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

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.CategorySearchModel;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.entity.Categories;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.entity.SaleOder;
import npn.devpro.shop16.entity.SaleOderProduct;
import npn.devpro.shop16.services.CategoriesService;
import npn.devpro.shop16.services.ProductService;



@Controller
public class CategoriesController extends BaseController {
    @Autowired
    private ProductService productsService;
    @Autowired
    private CategoriesService categoryService;

	/*
	 * @RequestMapping(value = {"/category/{seo}"}, method = RequestMethod.GET)
	 * public String category(final Model model, final HttpServletRequest request,
	 * final HttpServletResponse response,
	 * 
	 * @PathVariable("seo") String seo) throws IOException {
	 * 
	 * CategorySearchModel categorySearchModel = new CategorySearchModel();
	 * categorySearchModel.setSeo(seo); CategorySearchModel searchModel = new
	 * CategorySearchModel(); model.addAttribute("categoryList",
	 * categoryService.search(searchModel)); ProductSearchModel PrSearchModel = new
	 * ProductSearchModel(); model.addAttribute("productList",
	 * productService.search(PrSearchModel)); Categories categories =
	 * categoryService.search(categorySearchModel).getData().get(0);
	 * model.addAttribute("CurrentCategory", categories); ProductSearchModel
	 * productSearchModel = new ProductSearchModel(); productSearchModel.categoryId
	 * = categories.getId(); model.addAttribute("productsData",
	 * productService.search(productSearchModel));
	 * 
	 * // MVC được cấu hình chỉ định vào thư mục /src/main/webapp/WEB-INF/views //
	 * để tìm các views // /WEB-INF/views/user/index.jsp return
	 * "khachhang/category"; // -> đường dẫn tới View.
	 * 
	 * }
	 */
	/*
	 * @RequestMapping(value = {"/search"},method = RequestMethod.GET) public String
	 * search(final Model model, final HttpServletRequest request, final
	 * HttpServletResponse response) throws IOException{
	 * 
	 * // code cũ lấy tất cả sản phẩm CategorySearchModel categorySearchModel = new
	 * CategorySearchModel(); Categories categories =
	 * categoryService.search(categorySearchModel).getData().get(0);
	 * ProductSearchModel searchModel = new ProductSearchModel();
	 * searchModel.keyword = request.getParameter("keyword");
	 * model.addAttribute("productsWithSearch", productService.search(searchModel));
	 * return "customer/search"; }
	 */
	
	  
	  
	  
	  @RequestMapping(value = {"/category/{Id}"}, method = RequestMethod.GET) 
	  public String listSaleOrder(final Model model, final
	  HttpServletRequest request, final HttpServletResponse response, @PathVariable("Id") int id )
			  throws Exception{ 
		  
		  ProductSearchModel searchModel = new ProductSearchModel();
			searchModel.keyword = request.getParameter("keyword");
			searchModel.setPage(getCurrentPage(request));
			searchModel.categoryId = super.getInteger(request, "categoryId");

			model.addAttribute("productsWithPaging", productsService.search(searchModel));
			model.addAttribute("searchModel", searchModel);
	  List<Products> products = productsService.findAll();
	  model.addAttribute("products",products);
	  Categories categories = categoryService.getById(id); 
	  model.addAttribute("categories", categories);
	  return "khachhang/category"; }
	 
}
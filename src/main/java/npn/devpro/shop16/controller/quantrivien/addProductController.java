package npn.devpro.shop16.controller.quantrivien;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.View;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;



import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.entity.Categories;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.services.CategoriesService;
import npn.devpro.shop16.services.ProductService;

@Controller
public class addProductController extends BaseController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;

	
//	gọi danh sách sản phẩm
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		  
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.categoryId = super.getInteger(request, "categoryId");

		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		 

		return "quantrivien/productList";
	}
	
	
//	gọi View thêm sản phẩm
	@RequestMapping(value = { "/admin/addproduct" }, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		// đẩy danh sách categories xuống
		// model.addAttribute("categories", categoriesService.findAll());
 
		// tạo một đối tượng contract
//		addProduct addPrd = new addProduct();
		Products products = new Products();
		// đẩy contact xuống tầng View từ controller
		model.addAttribute("products", products);  
		return "quantrivien/addproduct";
	}
	
	@RequestMapping(value = { "/admin/addproduct/{productId}" }, method = RequestMethod.GET)
	public String adminProductEdit(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("productId") int productId) throws IOException {
		// Ä‘áº©y danh sÃ¡ch categories xuá»‘ng
//		model.addAttribute("categories", categoriesService.findAll());

		// láº¥y sáº£n pháº©m trong db
		Products products = productService.getById(productId);

		// edit sáº£n pháº©m
		model.addAttribute("products", products);

		return "quantrivien/addproduct";
	}
	
	 @RequestMapping(value = {"/admin/product/delete/{productId}"},method = RequestMethod.GET)
	    public String Delete(final Model model,
	              final HttpServletRequest request,
	              final HttpServletResponse response,
	              @ModelAttribute("products") Products products,
	              @PathVariable("productId") int productId) throws IOException{
	        // gửi danh sách categories xuống view

	        productService.deleteById(productId);
	        return "redirect:/admin/product/list";
	    }

	@RequestMapping(value = { "/admin/addproduct" }, method = RequestMethod.POST)
	public String add_product(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			final @ModelAttribute("products") Products products,
			final @RequestParam("avatarfile") MultipartFile avatarfile,
			final @RequestParam("productImage") MultipartFile[] productImage) throws IOException {
		/*
		 * String yourName = request.getParameter("name"); String yourEmail =
		 * request.getParameter("email"); String yourMessage =
		 * request.getParameter("message");
		 */

		model.addAttribute("TB", "Đã thêm sản phẩm " + products.getTitle() + " vào hệ thống");
//		avatar.transferTo(new File("D:/Java WEB/upload/" + avatar.getOriginalFilename()));
//		productService.saveOrUpdate(products);

		// cần kiểm tra xem id của product
		// = null || = 0 thì thêm mới
		// ngược lại là chỉnh sửa

		if (products.getId() == null || products.getId() <= 0) { // thêm mới

			productService.add(products, avatarfile, productImage);

		} else { // chỉnh sửa

			productService.update(products, avatarfile, productImage);
		}

		return "quantrivien/addproduct";
	}
}

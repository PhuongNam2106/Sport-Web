package npn.devpro.shop16.controller.quantrivien;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.github.slugify.Slugify;

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.CategorySearchModel;
import npn.devpro.shop16.dto.ContactSearchModel;
import npn.devpro.shop16.entity.Categories;
import npn.devpro.shop16.entity.ContactSQL;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.services.CategoriesService;

@Controller
public class AdminAddCategoryController extends BaseController {
	@Autowired
	private CategoriesService categoriesService;
	
	
	@RequestMapping(value = { "/admin/categoryList" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		List<Categories> categories;
		categories=categoriesService.findAll();
		model.addAttribute("categories", categories);
		
		CategorySearchModel searchModel = new CategorySearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.categoryId = super.getInteger(request, "categoryId");

		model.addAttribute("CategoryWithPaging", categoriesService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		
//		ContactSQL contactSQL = new ContactSQL();
//		model.addAttribute("contactSQL",contactSQL);

		return "quantrivien/categoryList";
	}
	
	 @RequestMapping(value = {"/admin/category/delete/{categoryId}"},method = RequestMethod.GET)
	    public String Delete(final Model model,
	                         final HttpServletRequest request,
	                         final HttpServletResponse response,
				/* @ModelAttribute("categories") Categories categories, */
	                         @PathVariable("categoryId") int categoryId) throws IOException {
	        // gửi danh sách categories xuống view

	        categoriesService.deleteById(categoryId);
	        return "redirect:/admin/categoryList";
	    }
	
	@RequestMapping(value = { "/admin/addcategory/{categoryId}" }, method = RequestMethod.GET)
	public String adminProductEdit(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("categoryId") int categoryId) throws IOException {
		// Ä‘áº©y danh sÃ¡ch categories xuá»‘ng
//		model.addAttribute("categories", categoriesService.findAll());

		// láº¥y sáº£n pháº©m trong db
		Categories categories = categoriesService.getById(categoryId); 

		// edit sáº£n pháº©m
		model.addAttribute("category", categories);

		return "quantrivien/addcategory";
	}
	
	@RequestMapping(value = { "/admin/addcategory" }, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		// đẩy danh sách categories xuống
		// model.addAttribute("categories", categoriesService.findAll());


		Categories categories = new Categories();
		// đẩy contact xuống tầng View từ controller
		model.addAttribute("category", categories);  
		return "quantrivien/addcategory";
	}
	
	@RequestMapping(value = { "/admin/addcategory" }, method = RequestMethod.POST)
	public String add_category(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			final @ModelAttribute("category") Categories categories
			) throws IOException {

		model.addAttribute("TB", "Đã thêm loại sản phẩm " + categories.getName() + " vào hệ thống");
//		avatar.transferTo(new File("D:/Java WEB/upload/" + avatar.getOriginalFilename()));
//		productService.saveOrUpdate(products);

		// cần kiểm tra xem id của product
		// = null || = 0 thì thêm mới
		// ngược lại là chỉnh sửa

		
		categories.setSeo(new Slugify().slugify(categories.getName()));
		categoriesService.saveOrUpdate(categories);
		return "quantrivien/addcategory";
	}

}

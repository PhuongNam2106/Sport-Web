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

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.CategorySearchModel;
import npn.devpro.shop16.dto.UserSearchModel;
import npn.devpro.shop16.entity.Categories;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.entity.User;
import npn.devpro.shop16.services.UserService;

@Controller
public class AdminUserController extends BaseController{
	@Autowired
	private UserService userService;
	@RequestMapping(value = { "/admin/userList" }, method = RequestMethod.GET)
	public String userList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		List<User> user;
		user=userService.findAll();
		model.addAttribute("user", user);
		
		UserSearchModel searchModel = new UserSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.Id = super.getInteger(request, "Id");

		model.addAttribute("UserWithPaging", userService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		
//		ContactSQL contactSQL = new ContactSQL();
//		model.addAttribute("contactSQL",contactSQL);

		return "quantrivien/userList";
	}
	
	@RequestMapping(value = {"/admin/user/delete/{userId}"},method = RequestMethod.GET)
    public String Delete(final Model model,
              final HttpServletRequest request,
              final HttpServletResponse response,
              @ModelAttribute("user") User user,
              @PathVariable("userId") int userId) throws IOException{
        // gửi danh sách categories xuống view

        userService.deleteById(userId);
        return "redirect:/admin/userList";
    }
}

package npn.devpro.shop16.controller.khachhang;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import npn.devpro.shop16.controller.BaseController;

import npn.devpro.shop16.entity.User;
import npn.devpro.shop16.services.UserService;
@Controller
public class ProfileCustomerController extends BaseController {
	
	@Autowired 
	private UserService userService;
	@RequestMapping(value = { "/profile" }, method = RequestMethod.GET)
	public String profile(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		User user = super.getUserLogined();
		
		model.addAttribute("user",user);
		return "khachhang/profile"; 
	}
	
	@RequestMapping(value = { "/profile" }, method = RequestMethod.POST)
	public String editProfile(final Model model, final HttpServletRequest request, final HttpServletResponse response,@ModelAttribute("user") User user )
			throws IOException {
		
		User userChange = userService.getById(user.getId());
		 userService.saveOrUpdate(userChange); 
		
		return "khachhang/profile"; 
	}
	
}

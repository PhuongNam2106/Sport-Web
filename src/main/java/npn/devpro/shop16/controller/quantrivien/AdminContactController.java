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
import npn.devpro.shop16.dto.ContactSearchModel;

import npn.devpro.shop16.entity.ContactSQL;
import npn.devpro.shop16.services.ContactService;

@Controller
public class AdminContactController extends BaseController {

	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping(value = { "/admin/contact/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		List<ContactSQL> contactSQL;
		contactSQL=contactService.findAll();
		model.addAttribute("contactSQL", contactSQL);
		
		ContactSearchModel searchModel = new ContactSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.customerId = super.getInteger(request, "customerId");

		model.addAttribute("contactWithPaging", contactService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		
//		ContactSQL contactSQL = new ContactSQL();
//		model.addAttribute("contactSQL",contactSQL);

		return "quantrivien/contactList";
	}
	
	
}

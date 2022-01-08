package npn.devpro.shop16.controller.khachhang;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.entity.ContactSQL;
import npn.devpro.shop16.services.ContactService;

@Controller
public class ContactController extends BaseController {
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping(value = {"/contact"},
			method = RequestMethod.GET)
	public String contact (final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException {
//		String ho = request.getParameter("Ho");
//		String ten = request.getParameter("Ten") ;
//		response.getWriter().print("Chao mung "+ ho + " " + ten + "toi khoa hoc JavaWeb");
		
//		tạo một đối tượng contract
		 ContactSQL contact = new ContactSQL(); 
			/* ContactSQL contactSQL = new ContactSQL(); */
	// đẩy contact xuống tầng View từ controller
	  model.addAttribute("contactModel",contact);
		return "khachhang/contact";
	}
	
	
	
	
	
	
	@RequestMapping(value = {"/contact"},
			method = RequestMethod.POST)
	public String post_simple (final Model model, final HttpServletRequest request, 
			final HttpServletResponse response, 
			final @ModelAttribute("contactModel") ContactSQL contact)
	throws IOException {
		/*
		 * String yourName = request.getParameter("name"); String yourEmail =
		 * request.getParameter("email"); String yourMessage =
		 * request.getParameter("message");
		 */
		//lưu thông tin từ contact
		
		
		model.addAttribute("TB","Cảm ơn "+ contact.getCustomerName()   + ", chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất");
		contactService.saveOrUpdate(contact);
		return "khachhang/contact";
	}
	
	/**
	 * Sử dụng ajax
	 * @param model
	 * @param request
	 * @param response
	 * @param contactModel
	 * @return
	 */
	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_contact(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 
						final @RequestBody ContactSQL contact) {
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Cảm ơn bạn " + contact.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
}

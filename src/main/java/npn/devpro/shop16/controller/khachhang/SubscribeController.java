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

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import npn.devpro.shop16.entity.SubscribeSQL;
import npn.devpro.shop16.services.SubscribeService;

@Controller
public class SubscribeController {
	
	
	@Autowired
	private SubscribeService subscribeService;
	@RequestMapping(value = {"/subscribe"},
			method = RequestMethod.GET)
	public String contact (final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException {
//		String ho = request.getParameter("Ho");
//		String ten = request.getParameter("Ten") ;
//		response.getWriter().print("Chao mung "+ ho + " " + ten + "toi khoa hoc JavaWeb");
		
//		tạo một đối tượng contract
//		Subscribe subscribe = new Subscribe();
		SubscribeSQL subscribeSQL = new SubscribeSQL();
	// đẩy contact xuống tầng View từ controller
//	  model.addAttribute("subscribe",subscribe);
	  model.addAttribute("subscribeSQL",subscribeSQL);
		return "khachhang/subscribe";
	}
	
	/*
	 * @RequestMapping(value = {"/contact"}, method = RequestMethod.POST) public
	 * String post_simple (final Model model, final HttpServletRequest request,
	 * final HttpServletResponse response, final @ModelAttribute("contactModel")
	 * Contact contact) throws IOException { String yourName =
	 * request.getParameter("name"); String yourEmail =
	 * request.getParameter("email"); String yourMessage =
	 * request.getParameter("message");
	 * 
	 * model.addAttribute("TB","Cảm ơn" + contact.getName() +
	 * ", chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất"); return
	 * "khachhang/subcribe"; }
	 */
	
	/**
	 * Sử dụng ajax
	 * @param model
	 * @param request
	 * @param response
	 * @param contactModel
	 * @return
	 */
	@RequestMapping(value = { "/ajax/subscribe" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajaxEntity(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 

						final @RequestBody SubscribeSQL subscribeSQL) {
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Chúc mừng " +subscribeSQL.getName() + " đã đăng ký thành công, Chúng tôi sẽ báo cho bạn những sản phẩm mới nhất!");
//		System.out.println(subscribe.getName());
//		SubscribeSQL subscribeSQL = new SubscribeSQL();
		subscribeService.saveOrUpdate(subscribeSQL);
		return ResponseEntity.ok(jsonResult);
	}
}

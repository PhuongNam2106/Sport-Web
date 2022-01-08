package npn.devpro.shop16.controller.khachhang;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import npn.devpro.shop16.controller.BaseController;

@Controller // tạo một Bean là một controller
public class HomeController extends BaseController{
	@RequestMapping(value = {"/home"},
			method = RequestMethod.GET)
	public String home (final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException {
//		String ho = request.getParameter("Ho");
//		String ten = request.getParameter("Ten") ;
//		response.getWriter().print("Chao mung "+ ho + " " + ten + "toi khoa hoc JavaWeb");
		return "khachhang/trangchu";
	}
}

package npn.devpro.shop16.controller.quantrivien;

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
import npn.devpro.shop16.dto.SaleOrderSearchModel;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.entity.SaleOder;
import npn.devpro.shop16.entity.SaleOderProduct;
import npn.devpro.shop16.services.SaleOrderProductService;
import npn.devpro.shop16.services.SaleOrderService;



@Controller
public class AdminSaleOrderController extends BaseController{
	@Autowired
	private SaleOrderService saleOrderService;
	@Autowired
	private SaleOrderProductService saleOrderProductService;
	  @RequestMapping(value = {"/admin/saleOrderList"}, method = RequestMethod.GET)
	    public String getOrder(final Model model,
	                           final HttpServletRequest request,
	                           final HttpServletResponse response) throws Exception{
	        model.addAttribute("saleOder", new SaleOder());
	        SaleOrderSearchModel searchModel = new SaleOrderSearchModel();
	        searchModel.keyword = request.getParameter("keyword");
	        searchModel.setPage(getCurrentPage(request));
	        model.addAttribute("saleOrderWithPaging", saleOrderService.search(searchModel));
	        model.addAttribute("searchModel", searchModel);
	        model.addAttribute("product", new Products());
	        model.addAttribute("saleOrderProduct", saleOrderProductService.findAll());
	        return "quantrivien/saleOrderList";
	    }
	  
	  @RequestMapping(value = {"/admin/saleOrderList/{Id}"}, method = RequestMethod.GET)
	    public String listSaleOrder(final Model model,
	                           final HttpServletRequest request,
	                           final HttpServletResponse response,
	                           @PathVariable("Id") int id ) throws Exception{

	        List<SaleOderProduct> saleOderProduct = saleOrderProductService.findAll();
	        model.addAttribute("saleOrderProducts",saleOderProduct);
	        SaleOder saleOder = saleOrderService.getById(id);
	        model.addAttribute("saleOrder", saleOder);
	        return "quantrivien/saleOrderDetailList";
	    }
	  
	  @RequestMapping(value = {"/admin/saleOrderList/delete/{Id}"}, method = RequestMethod.GET)
	    public String deleteSaleOrder(final Model model,
	                           final HttpServletRequest request,
	                           final HttpServletResponse response,
	                           @PathVariable("Id") int id ) throws Exception{

	       saleOrderService.deleteById(id);
	        return "redirect:/admin/saleOrderList";
	    }
}

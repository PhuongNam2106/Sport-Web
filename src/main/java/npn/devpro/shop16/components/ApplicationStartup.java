
/*
 * package npn.devpro.shop16.components;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.boot.context.event.ApplicationReadyEvent;
 * 
 * import java.math.BigDecimal; import java.util.Date;
 * 
 * import org.apache.jasper.tagplugins.jstl.core.Import; import
 * org.springframework.context.ApplicationEvent; import
 * org.springframework.context.ApplicationListener;
 * 
 * import org.springframework.stereotype.Component; import
 * npn.devpro.shop16.entity.Categories; import
 * npn.devpro.shop16.entity.Products; import
 * npn.devpro.shop16.services.CategoriesService;
 * 
 * @Component // bean public class ApplicationStartup implements
 * ApplicationListener<ApplicationReadyEvent> {
 * 
 * @Autowired // inject 1 bean vào trong 1 bean khác private CategoriesService
 * categoriesService;
 * 
 * // khi ứng dụng chạy xong thì vào hàm này
 * 
 * @Override public void onApplicationEvent(final ApplicationReadyEvent event) {
 * System.out.println("----------------Begin-ApplicationReadyEvent------------")
 * ; this.seedPythonCategory();
 * System.out.println("---------------End-ApplicationReadyEvent---------------")
 * ; }
 * 
 * private void seedPythonCategory() { // TODO Auto-generated method stub
 * Categories pythonCate = categoriesService.
 * getOneByNativeSQL("SELECT * FROM tbl_category WHERE Name = 'C++'"); //nếu
 * không có thì thêm mới if (pythonCate == null) { pythonCate = new
 * Categories(); pythonCate.setName("C++"); pythonCate.setDescription("C++");
 * 
 * for (int i = 0; i < 2; i++) { Products p = new Products();
 * p.setTitle("Python Title "+i);
 * 
 * p.setDetailDescription("Detail Description "+i); p.setPrice(new
 * BigDecimal("1000")); p.setCreatedDate(new Date());
 * 
 * //gọi hàm utility trong onetomany pythonCate.addProduct(p); }
 * 
 * } else { pythonCate.setUpdatedDate(new Date()); }
 * 
 * categoriesService.saveOrUpdate(pythonCate); }
 * 
 * 
 * 
 * }
 */

package npn.devpro.shop16.components;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;


import com.github.slugify.Slugify;

import npn.devpro.shop16.services.CategoriesService;

@Component // bean
public class ApplicationStartup implements ApplicationListener<ApplicationReadyEvent> {
	
	@Autowired // inject 1 bean vÃ o trong 1 bean khÃ¡c
	private CategoriesService categoriesService;
	
	/**
	 * khi á»©ng dá»¥ng cháº¡y xong sáº½ cháº¡y vÃ o hÃ m nÃ y.
	 */
	@Override
	public void onApplicationEvent(final ApplicationReadyEvent event) {
		
		System.out.println("------- BEGIN-ApplicationReadyEvent -------");		
//		this.seedPythonCategory();
		System.out.println("------- END-ApplicationReadyEvent -------");
		
	}
	
	
}

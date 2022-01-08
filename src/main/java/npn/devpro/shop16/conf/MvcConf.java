package npn.devpro.shop16.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration // định nghĩa là một Bean cho loại cấu hình
public class MvcConf implements WebMvcConfigurer {
	@Override
	  public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
        registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
        registry.addResourceHandler("/img/**").addResourceLocations("classpath:/img/");
        registry.addResourceHandler("/upload/**").addResourceLocations("file:" + "D:/Java WEB/upload/");
    }
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		//thiết lập view engine
		bean.setViewClass(JstlView.class);
		//Đường dẫn folder chứa Views
		bean.setPrefix("/WEB-INF/view/");
		//Tên đuôi của view
		bean.setSuffix(".jsp");
		return bean;
	}
}

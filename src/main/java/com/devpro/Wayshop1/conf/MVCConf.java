package com.devpro.Wayshop1.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class MVCConf implements WebMvcConfigurer {
	public static String ROOT_UPLOAD_PATH = "E:/My Data/eclip-wp/com.devpro.Wayshop1/upload/";
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/user/");
		registry.addResourceHandler("/admin-resource/**").addResourceLocations("classpath:/admin-resource/");
		registry.addResourceHandler("/summernote/**").addResourceLocations("classpath:/summernote/");
//		Cấu hình folder trên server chứa các file người dùng upload
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + ROOT_UPLOAD_PATH);
	}
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/"); // thư mục gốc chứa các file jsp
		bean.setSuffix(".jsp");
		return bean;
	}
}

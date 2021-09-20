package kr.ac.kopo.consultation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.consultation.service.ProductService;
import kr.ac.kopo.consultation.vo.ProductVO;

@Controller
public class ProductController {
	
	
	@Autowired
	ProductService service;

	
	@PostMapping("/products")
	public ModelAndView viewProductsMain(@RequestBody String productType) {
		
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(productType);
		
		
		List<ProductVO> products = service.searchProducts(productType);
		System.out.println(products);
		
		
		mav.setViewName("pb/consulting/productList");
		mav.addObject("productList" , products);
		
		return mav;
	}
	
	
	@PostMapping("/products/change")
	public ModelAndView viewProduct(@RequestBody String productType) {
		
		
		ModelAndView mav = new ModelAndView();
		System.out.println(productType);
		
		if(productType.equals("랩 어카운트")) {
			productType = productType.replaceAll(" ", "");
			
		}else {
			productType = productType.substring(0,2);
		}
		
		
		System.out.println("단어처리 후 상품 분류 명 : " + productType);
		
		List<ProductVO> products = service.searchProducts(productType);
		System.out.println(products);
		
		
		mav.setViewName("pb/consulting/productList");
		mav.addObject("productList" , products);
		
		return mav;
	}
	
	
}

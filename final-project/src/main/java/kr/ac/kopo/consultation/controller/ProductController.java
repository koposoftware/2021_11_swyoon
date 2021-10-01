package kr.ac.kopo.consultation.controller;

import kr.ac.kopo.consultation.service.ProductService;
import kr.ac.kopo.consultation.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ProductController {


    @Autowired
    ProductService service;


    @PostMapping("/products")
    public ModelAndView viewProductsMain(@RequestBody String productType) {


        ModelAndView mav = new ModelAndView();

        System.out.println(productType);


        List<ProductVO> products = service.searchAllProducts();
        System.out.println(products);


        mav.setViewName("pb/consulting/productList");
        mav.addObject("productList", products);

        return mav;
    }


    @PostMapping("/products/change")
    public ModelAndView viewProduct(@RequestBody String productType) {


        ModelAndView mav = new ModelAndView();
        System.out.println(productType);

        if (productType.equals("랩 어카운트")) {

        } else {
            productType = productType.substring(0, 2);
        }

        System.out.println("단어처리 후 상품 분류 명 : " + productType);

        if (productType.equals("전체 보기")) {
            List<ProductVO> products = service.searchAllProducts();

        }
        List<ProductVO> products = service.searchProducts(productType);
        System.out.println(products);


        mav.setViewName("pb/consulting/productList");
        mav.addObject("productList", products);

        return mav;
    }

    @RequestMapping("/openModal")
    public String viewModal(HttpServletResponse response) {

        response.setHeader("X-Frame-Options", "ALLOW-FROM https://192.168.0.15:433/openModal");

        return "pb/consulting/agreement";
    }


}

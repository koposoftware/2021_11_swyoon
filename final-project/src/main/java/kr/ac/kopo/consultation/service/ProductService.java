package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.vo.ProductVO;

import java.util.List;

public interface ProductService {

    List<ProductVO> searchProducts(String productType);

    List<ProductVO> searchAllProducts();

}
package kr.ac.kopo.consultation.service;

import java.util.List;

import kr.ac.kopo.consultation.vo.ProductVO;

public interface ProductService {
	
	List<ProductVO> searchProducts(String productType);

}
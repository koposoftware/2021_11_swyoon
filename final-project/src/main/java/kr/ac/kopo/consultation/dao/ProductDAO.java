package kr.ac.kopo.consultation.dao;

import java.util.List;

import kr.ac.kopo.consultation.vo.ProductVO;

public interface ProductDAO {
		
	
	List<ProductVO> searchProducts(String productType);
}

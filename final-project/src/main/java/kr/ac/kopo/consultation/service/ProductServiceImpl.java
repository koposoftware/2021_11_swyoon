package kr.ac.kopo.consultation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.consultation.dao.ProductDAO;
import kr.ac.kopo.consultation.vo.ProductVO;


@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;
	
	
	@Override
	public List<ProductVO> searchProducts(String productType) {
		
		List<ProductVO> products = productDAO.searchProducts(productType);
		
		
		return products;
	}

}

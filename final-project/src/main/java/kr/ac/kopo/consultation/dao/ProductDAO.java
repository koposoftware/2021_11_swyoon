package kr.ac.kopo.consultation.dao;

import kr.ac.kopo.consultation.vo.ProductVO;

import java.util.List;

public interface ProductDAO {


    List<ProductVO> searchProducts(String productType);

    List<ProductVO> searchAllProducts();
}

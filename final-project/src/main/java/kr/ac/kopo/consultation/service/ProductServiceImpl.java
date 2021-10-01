package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.dao.ProductDAO;
import kr.ac.kopo.consultation.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDAO productDAO;


    @Override
    public List<ProductVO> searchProducts(String productType) {

        List<ProductVO> products = productDAO.searchProducts(productType);


        return products;
    }

    @Override
    public List<ProductVO> searchAllProducts() {
        List<ProductVO> products = productDAO.searchAllProducts();

        return products;
    }
}

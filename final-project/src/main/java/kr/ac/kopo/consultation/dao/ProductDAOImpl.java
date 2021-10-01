package kr.ac.kopo.consultation.dao;

import kr.ac.kopo.consultation.vo.ProductVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class ProductDAOImpl implements ProductDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;


    @Override
    public List<ProductVO> searchProducts(String productType) {

        System.out.println("in dao" + productType);

        List<ProductVO> products = sqlSessionTemplate.selectList("consultation.ProductDAO.searchProducts", productType);
//		for(ProductVO p : products) {
//			System.out.println("product dao에서 잘 넘어옴? : " + p);
//		}

        return products;
    }

    @Override
    public List<ProductVO> searchAllProducts() {

        List<ProductVO> products = sqlSessionTemplate.selectList("consultation.ProductDAO.searchAllProducts");

        return products;
    }
}

package kr.ac.kopo.myPage.service;

import kr.ac.kopo.myPage.dao.MyPageDAO;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements  MyPageService {

    @Autowired
    MyPageDAO dao;


    @Override
    public void addFavorite(FavoriteVO favoriteVO) {


        dao.addFavorite(favoriteVO);



    }
}

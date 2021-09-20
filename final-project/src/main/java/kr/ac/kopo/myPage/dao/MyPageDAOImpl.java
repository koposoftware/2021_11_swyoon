package kr.ac.kopo.myPage.dao;


import kr.ac.kopo.myPage.vo.FavoriteVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;



    @Override
    public void addFavorite(FavoriteVO favoriteVO) {

        System.out.println("dao 넘어온 favorite" + favoriteVO);


       int check =  sqlSessionTemplate.insert("myPage.MyPageDAO.insertFavorite" , favoriteVO);

       if(check != 0 ){

           System.out.println("favorite insert 완료");
       }



    }
}

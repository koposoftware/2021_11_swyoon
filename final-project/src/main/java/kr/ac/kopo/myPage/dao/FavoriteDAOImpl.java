package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class FavoriteDAOImpl implements FavoriteDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    private String nameSpace = "myPage.FavoriteDAO.";


    @Override
    public void addFavorite(FavoriteVO favoriteVO) {

        System.out.println("dao 넘어온 favorite" + favoriteVO);
    
        int check = sqlSessionTemplate.insert(nameSpace + "insertFavorite", favoriteVO);

        if (check != 0) {

            System.out.println("favorite insert 완료");
        }
    }

    @Override
    public List<BankerVO> searchFavoriteList(ClientVO clientVO) {

        List<BankerVO> favoriteList = sqlSessionTemplate.selectList(nameSpace + "searchFavoriteList", clientVO.getUsername());


        return favoriteList;
    }

    @Override
    public List<BankerVO> searchFavoriteListBySector(String sector, ClientVO clientVO) {

        Map<String, String> map = new HashMap();

        map.put("sector", sector.trim());
        map.put("username", clientVO.getUsername());

        List<BankerVO> favoriteListBySector = sqlSessionTemplate.selectList(nameSpace + "searchFavoriteListBySector", map);

        for (BankerVO b : favoriteListBySector) {
            System.out.println("삭제 후 패이보릿 조회 : " + b);
        }


        return favoriteListBySector;
    }

    @Override
    public List<BankerVO> selectOneByFavorite(String codeNum, ClientVO clientVO) {

        Map<String, String> map = new HashMap();

        map.put("codeNum", codeNum.trim());
        map.put("username", clientVO.getUsername());

        List<BankerVO> selectedPB = sqlSessionTemplate.selectList(nameSpace + "selectOneByFavorite", map);

        System.out.println("선택한 페이보릿 넘어옴? : " + selectedPB);

        return selectedPB;
    }

    @Override
    public void deleteFavorite(String codeNum, ClientVO clientVO) {

        Map<String, String> map = new HashMap();


        map.put("codeNum", codeNum.trim());
        map.put("username", clientVO.getUsername());

        int check = sqlSessionTemplate.delete(nameSpace + "deleteFavorite", map);

        if (check != 0) {
            System.out.println("삭제 완료");
        }

    }
}

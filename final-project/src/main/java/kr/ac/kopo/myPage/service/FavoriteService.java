package kr.ac.kopo.myPage.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.FavoriteVO;

import java.util.List;

public interface FavoriteService {
    void addFavorite(FavoriteVO favoriteVO);

    List<BankerVO> searchFavoriteList(ClientVO clientVO);

    List<BankerVO> searchFavoriteListBySector(String sector, ClientVO clientVO);

    List<BankerVO> selectOneByFavorite(String codeNum, ClientVO clientVO);

    void deleteFavorite(String codeNum, ClientVO clientVO);
}

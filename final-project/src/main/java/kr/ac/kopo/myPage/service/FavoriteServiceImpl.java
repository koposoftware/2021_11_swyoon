package kr.ac.kopo.myPage.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.dao.FavoriteDAO;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import kr.ac.kopo.reservation.dao.ReservationDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavoriteServiceImpl implements FavoriteService {


    @Autowired
    FavoriteDAO favoriteDAO;

    @Autowired
    ReservationDAO reservationDAO;


    @Override
    public void addFavorite(FavoriteVO favoriteVO) {
        favoriteDAO.addFavorite(favoriteVO);
    }

    @Override
    public List<BankerVO> searchFavoriteList(ClientVO clientVO) {
        List<BankerVO> favoriteList = reservationDAO.selectByFavorite(clientVO);

        return favoriteList;
    }


    @Override
    public List<BankerVO> searchFavoriteListBySector(String sector, ClientVO clientVO) {

        if (sector.trim().equals("전체 분야")) {
            List<BankerVO> favoriteListBySector = reservationDAO.selectByFavorite(clientVO);
            return favoriteListBySector;

        } else {
            List<BankerVO> favoriteListBySector = favoriteDAO.searchFavoriteListBySector(sector, clientVO);
            return favoriteListBySector;
        }
    }

    @Override
    public List<BankerVO> selectOneByFavorite(String codeNum, ClientVO clientVO) {

        List<BankerVO> selectedPB = favoriteDAO.selectOneByFavorite(codeNum, clientVO);

        return selectedPB;
    }


    @Override
    public void deleteFavorite(String codeNum, ClientVO clientVO) {

        favoriteDAO.deleteFavorite(codeNum, clientVO);

    }

}

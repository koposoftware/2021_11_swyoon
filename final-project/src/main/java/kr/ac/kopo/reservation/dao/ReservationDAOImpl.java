package kr.ac.kopo.reservation.dao;

import kr.ac.kopo.consultation.vo.RoomVO;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.reservation.vo.ReservationVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReservationDAOImpl implements ReservationDAO {


    private String namespace = "reservation.ReservationDAO.";

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<BankerVO> searchBanker() { // PB 목록 조회

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBanker");

        return bankerList;
    }

    @Override
    public List<BankerVO> availableSearchBanker(String date) {


        List<BankerVO> impossibleBankerList = sqlSessionTemplate.selectList(namespace + "availableSearchBanker", date.trim());


        return impossibleBankerList;
    }

    @Override
    public int insertReservation(ReservationVO reservationVO) {

        int check = sqlSessionTemplate.insert(namespace + "insertReservation", reservationVO);
        if (check != 0) {
            System.out.println("에약 정보 insert 완료");
        }

        return check;

    }

    @Override
    public List<BankerVO> searchBySector(String sector) {

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBySector", sector.trim());

        return bankerList;
    }


    @Override
    public List<BankerVO> selectByFavorite(ClientVO clientVO) {

        List<BankerVO> favoriteList = sqlSessionTemplate.selectList(namespace + "selectByFavorite", clientVO.getUsername());

        return favoriteList;
    }

    @Override
    public List<BankerVO> searchByTagName(String tagName) {

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchByTagName", tagName);

        return bankerList;
    }

    @Override
    public ReservationVO selectOneReservation(RoomVO roomVO) {

        ReservationVO reservationVO = sqlSessionTemplate.selectOne(namespace + "selectOneReservation", roomVO);


        return reservationVO;
    }
}

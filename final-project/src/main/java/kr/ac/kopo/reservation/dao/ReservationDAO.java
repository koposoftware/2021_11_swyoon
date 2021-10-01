package kr.ac.kopo.reservation.dao;

import kr.ac.kopo.consultation.vo.RoomVO;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

import java.util.List;

public interface ReservationDAO {

    List<BankerVO> searchBanker();

    List<BankerVO> searchBySector(String sector);

    List<BankerVO> availableSearchBanker(String date); // 이미 상담이 예약된 PB 조회

    int insertReservation(ReservationVO reservationVO);

    List<BankerVO> selectByFavorite(ClientVO clientVO);

    List<BankerVO> searchByTagName(String tagName);

    ReservationVO selectOneReservation(RoomVO roomVO);

}

package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

import java.util.List;

public interface ReservationService {


    List<BankerVO> searchBanker();
    List<BankerVO> searchBySector(String sector);
    List<BankerVO> availableSearchBanker(String date); // 상담 가능한 시간대 검색

    int insertReservation(ReservationVO reservationVO);



}

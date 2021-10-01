package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.vo.RoomVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

public interface ChatService {


    int insertRoom(RoomVO roomVO);

    RoomVO searchRoom(RoomVO roomVO);

    ReservationVO viewReservation(RoomVO roomVO);

}
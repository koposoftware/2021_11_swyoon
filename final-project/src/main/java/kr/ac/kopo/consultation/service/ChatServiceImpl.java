package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.dao.ChatDAO;
import kr.ac.kopo.consultation.vo.RoomVO;
import kr.ac.kopo.reservation.dao.ReservationDAO;
import kr.ac.kopo.reservation.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    ChatDAO dao;

    @Autowired
    ReservationDAO reservationDAO;

    @Override
    public int insertRoom(RoomVO roomVO) {

        int check = dao.insertRoom(roomVO);
        return check;
    }

    @Override
    public RoomVO searchRoom(RoomVO roomVO) {
        return null;
    }

    @Override
    public ReservationVO viewReservation(RoomVO roomVO) {

        ReservationVO reservationVO = reservationDAO.selectOneReservation(roomVO);

        return reservationVO;
    }
}

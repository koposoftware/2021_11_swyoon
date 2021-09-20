package kr.ac.kopo.consultation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.consultation.dao.ChatDAO;
import kr.ac.kopo.consultation.vo.RoomVO;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	ChatDAO dao;
	
	@Override
	public int insertRoom(RoomVO roomVO) {
		
		int check = dao.insertRoom(roomVO);
		return check;
	}

	@Override
	public RoomVO searchRoom(RoomVO roomVO) {
		return null;
	}
}

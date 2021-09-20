package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.vo.RoomVO;

public interface ChatService {
	
	
	 int insertRoom(RoomVO roomVO);
	 RoomVO searchRoom(RoomVO roomVO);

}
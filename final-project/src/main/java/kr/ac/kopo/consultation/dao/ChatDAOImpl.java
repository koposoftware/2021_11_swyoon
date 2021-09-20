package kr.ac.kopo.consultation.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.consultation.vo.RoomVO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertRoom(RoomVO roomVO) {
		System.out.println("in DAOImpl :" + roomVO);
		int check  = sqlSession.insert("consultation.ChatDAO.insertRoom" , roomVO);
		
		return check;
	}

}

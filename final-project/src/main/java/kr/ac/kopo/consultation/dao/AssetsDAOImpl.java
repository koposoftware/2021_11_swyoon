package kr.ac.kopo.consultation.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.consultation.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

@Repository
public class AssetsDAOImpl implements AssetsDAO {
	
	@Autowired
	SqlSessionTemplate SqlSessionTemplate;
	

	@Override
	public AssetsVO searchAssets(ClientVO client) {
		
		String clientId = client.getUserId();
		
		AssetsVO clientAssets = SqlSessionTemplate.selectOne("consultation.AssetsDAO.searchAssets" , clientId);
		
		
		return clientAssets;
	}

	
	
}

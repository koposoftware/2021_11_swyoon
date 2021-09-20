package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {


	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public ClientVO clientLogin(ClientVO member) {

		ClientVO userVO = sqlSessionTemplate.selectOne("member.MemberDAO.clientLogin" , member);
		return userVO;
	}

	@Override
	public BankerVO bankerLogin(BankerVO banker)  {

		BankerVO bankerVO = sqlSessionTemplate.selectOne("member.MemberDAO.bankerLogin" , banker);
		System.out.println("DB에서 조회된 PB 로그인 정보 : " + bankerVO );

		return bankerVO;
	}

	@Override
	public int registerBranch(ClientVO userVO) {

		int check = sqlSessionTemplate.update("member.MemberDAO.newBranch" , userVO);
		if(check != 0){
			System.out.println("지점 등록 완료..");
		}

		return check;
	}


}

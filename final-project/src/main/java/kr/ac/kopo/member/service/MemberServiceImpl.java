package kr.ac.kopo.member.service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	

	@Override
	public ClientVO clientLogin(ClientVO member) {

		ClientVO userVO = memberDAO.clientLogin(member);
		return userVO;
	}

	@Override
	public BankerVO bankerLogin(BankerVO banker) {
		BankerVO bankerVO = memberDAO.bankerLogin(banker);
		return bankerVO;
	}

	@Override
	public int registerBranch(ClientVO userVO) {
		int check = memberDAO.registerBranch(userVO);
		return check;
	}


}

package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface MemberDAO {


	BankerVO bankerLogin(BankerVO banker);
	ClientVO clientLogin(ClientVO member);
	int registerBranch( ClientVO userVO);
	

}

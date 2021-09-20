package kr.ac.kopo.member.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface MemberService {

	BankerVO bankerLogin(BankerVO banker);
	ClientVO clientLogin(ClientVO member);
	int registerBranch(ClientVO userVO);
}

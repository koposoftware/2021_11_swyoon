package kr.ac.kopo.consultation.dao;

import kr.ac.kopo.consultation.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface AssetsDAO {
	
	AssetsVO searchAssets(ClientVO client);

}

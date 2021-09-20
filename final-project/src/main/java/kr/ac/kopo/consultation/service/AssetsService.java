package kr.ac.kopo.consultation.service;

import kr.ac.kopo.consultation.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface AssetsService {
	
	
	AssetsVO searchAssets(ClientVO client);

}

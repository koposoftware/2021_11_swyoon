package kr.ac.kopo.consultation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.consultation.service.AssetsService;
import kr.ac.kopo.consultation.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

@Controller
public class AssetsController {
	
	
	@Autowired
	AssetsService service;
	
	
	
	@ResponseBody
	@PostMapping("/client/assets")
	public AssetsVO viewAssets(@RequestBody ClientVO clientId) {
		
		
		System.out.println("넘어온 클라이언트 ? :" + clientId);
		
		AssetsVO clientAssets = service.searchAssets(clientId);
		
		System.out.println("db에서 넘어온 에셋?" +clientAssets);
		
		
		
		return clientAssets;
	}
	

}

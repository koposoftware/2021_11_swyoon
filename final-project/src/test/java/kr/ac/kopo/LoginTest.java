package kr.ac.kopo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.ClientVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class LoginTest {
	
	@Autowired
	MemberService service;
	
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Test
	public void loginTest() {
		
		ClientVO member = new ClientVO();
		
		member.setUserId("test");
		member.setPassword("1234");
		
//		MemberVO userVO = service.login(member);
		
		
		ClientVO userVO = sqlSession.selectOne("member.MemberDAO.login", member);
		
		
		System.out.println("가져온디비" + userVO);
		
		
		
		
	}
	
	
	
	

}

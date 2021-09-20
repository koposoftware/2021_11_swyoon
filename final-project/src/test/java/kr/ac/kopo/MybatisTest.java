package kr.ac.kopo;

import static org.junit.Assert.assertNotNull;

import javax.sql.DataSource;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class) // 실행할 때 마다 JUnit으로 실행하기 위해 설정
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"}) // spring-mvc.xml 파일 읽어오기 
public class MybatisTest {
	
	@Autowired
	private DataSource dataSource ; // spring-mvc.xml에 만든 객체를 MybatisTest 클래스 안에 주입시킴
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	
	@Ignore // 이 단위테스트는 테스트를 진행하지 않게 해주는 어노테이션
	@Test // MybatisTest객체의 이 메소드만 Test 해볼 수 있다. // 단위테스트
	public void DataSource생성테스트() throws Exception{
//		System.out.println("dataSource :  " + dataSource);
		assertNotNull(dataSource); // 주입이 제대로 됐는지 판단하는 메서드 // dataSource의 값이 널이 아니면 초록색 막대 나옴
	}
	
	@Test
	public void mybatis연동테스트() throws Exception{
//		assertNotNull(sqlFactory);
		assertNotNull(sessionTemplate);
	}
	
	
}

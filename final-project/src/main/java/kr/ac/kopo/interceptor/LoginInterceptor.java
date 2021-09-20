package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.member.vo.ClientVO;

public class LoginInterceptor extends HandlerInterceptorAdapter  {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
//		System.out.println("로그인 인터셉터처리...");
		
		// 로그인 여부 판단	
		HttpSession session = request.getSession();
		ClientVO userVO = (ClientVO)session.getAttribute("userVO");
		
		
		if(userVO == null) {
			
			String uri = request.getRequestURI();
			System.out.println("uri : " + uri);
			uri = uri.substring(request.getContextPath().length()); // 재로그인 후, forward시킬 uri 저장
			System.out.println("substring 후 uri : "+ uri);
			
			
			// /board/detail?no=3
			// uri : /board/detail 	request.getRequestURI() ;
			// query : no=3			request.getQueryString() ;
			// if(query != null) uri = uri + "?" + query
			
			session.setAttribute("dest", uri); // sendRedirect로 인해, session에 객체등록
			
			response.sendRedirect(request.getContextPath() + "/login"); // spring controller가 아니기 때문에, 루트경로 붙여줘야함
			return false;
			
		}
		
		return true; 
		
	}
	
	

}

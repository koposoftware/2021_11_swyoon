package kr.ac.kopo.member.controller;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.ClientVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


// 원래는 {} 배열 형태로, 여러개 등록 가능
@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;

	@RequestMapping("/client/bankerList")
	public String searchBanker(){

		return "client/searchBanker/bankerList";
	}

	@RequestMapping(value = "/login" , method=RequestMethod.POST)
	public String login(ClientVO member , Model model, HttpSession session) {
		
		
		System.out.println("loginForm에서 넘어온 정보" + member);
		ClientVO userVO = service.clientLogin(member);
		System.out.println("DB에서 넘어온 정보(userVO) : " + userVO);
		
		if(userVO == null) {
			String msg = "아이디 또는 패스워드가 잘못되었습니다.";
			model.addAttribute("msg", msg);
			return "redirect:/";
		}
		
		// 로그인 성공
		session.setAttribute("userVO", userVO); // redirect로 인해, session에 미리 등록해준다.

		String dest = (String)session.getAttribute("dest");
		if(dest != null) { // 로그인 페이지 전에 다른 url
			session.removeAttribute("dest"); // dest session은 이제 필요 없기 때문에, 세션 제거
			return "redirect:" + dest;  // 로그인 전 페이지로 redirect
		}

		return "redirect:/"; // 스프링에서는 redirect 시 , 포워드 처럼 루트패스 다음으로 경로를 잡아줌
	}
	
	@RequestMapping(value="/logout" , method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate(); // @SessionAttributes 시 ,사용 불가

		System.out.println("로그아웃 완료");
		return "redirect:/";
	}

	@RequestMapping("/select/branch")
	public String selectBranch()  { // 등록할 지점 조회하기

		return "map/registerBranch";
	}

	@RequestMapping("/register/branch") // 지점 등록
	public String registerBranch(String title, HttpServletRequest request){

		System.out.println("넘어온 지점 이름 : " + title);

		HttpSession session = request.getSession();
		ClientVO userVO = (ClientVO) session.getAttribute("userVO");
		System.out.println(userVO);
		userVO.setBranchName(title);

		int check = service.registerBranch(userVO);
		if(check != 0 ){
			session.setAttribute("branchName" , title);
			System.out.println("지점 등록이 완료되었습니다.");
		}
		return "redirect:/";
	}





}

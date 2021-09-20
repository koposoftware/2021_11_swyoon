package kr.ac.kopo.consultation.controller;

import kr.ac.kopo.consultation.service.ChatService;
import kr.ac.kopo.consultation.vo.RoomVO;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
public class ChatController {



    @Autowired
    ChatService service;

    List<RoomVO> roomList = new ArrayList<RoomVO>();

    @RequestMapping("/pb/waitngRoom")
    public String waitRoom(){

        return "pb/services/waitRoom";
    }
    
    @RequestMapping("/client/room")
    public String viewRoom() {
    	
    	return "client/consulting/room";
    }
    
    
    
    @RequestMapping("/pb/consultingRoom") // 상담 메인 화면
    public String viewConsultingRoom() {
    	
    	return "pb/consulting/consultingMain";
    }
    
    

	/*
	 * @RequestMapping(value = "/chat", method = RequestMethod.GET, headers =
	 * "Connection!=Upgrade") public ModelAndView chat() { ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("room"); return mav; }
	 */

    // 상담 room create
    @RequestMapping("/createRoom")
    public ModelAndView createRoom(HttpSession session){

        ModelAndView mav = new ModelAndView();

        BankerVO bankerVO = (BankerVO)session.getAttribute("bankerVO");
        ClientVO clientVO = (ClientVO)session.getAttribute("userVO");
        
        RoomVO room = new RoomVO();
        Random random = new Random();
        int roomNumber = random.nextInt(1000000)+1; // 룸번호 랜덤으로 생성
        room.setRoomNumber(roomNumber);
        room.setClientName(clientVO.getUsername());
        room.setPbName(bankerVO.getPbName());
        
        System.out.println("createRoom : " + room );


           // int check = service.insertRoom(room); // 상담 room 생성하기

//            if(check != 0) {
//                System.out.println("room 생성 완료 ");
//            }

            session.setAttribute("roomVO", room); // 상담 room 정보 세션 등록
            
            mav.setViewName("pb/consulting/waitRoom");

        return mav;
    }


    @RequestMapping(value="/moveChatting"  ,  method = RequestMethod.GET)
    public ModelAndView chatting(HttpSession session) { // 고객 상담 화면

        RoomVO roomVO = (RoomVO)session.getAttribute("roomVO");

        ModelAndView mv = new ModelAndView();
        System.out.println("movechatting에서 넘어온 roomVo : " + roomVO);


            mv.setViewName("client/consulting/room");

        return mv;
    }
    
    @PostMapping("/moveChatting") // PB 상담화면
    public ModelAndView viewChatting(HttpSession session) {
    	
    	RoomVO room = (RoomVO)session.getAttribute("roomVO");
    	
    	System.out.println("세션에서 가져온 room : "+ room);
    	
    	ModelAndView mav = new ModelAndView();
    	
		/*
		 * mav.addObject("roomMaster", roomVO.getRoomMaster());
		 * mav.addObject("roomNumber", roomVO.getRoomNumber());
		 */
    	
        mav.setViewName("mainRoom");
    	
    	return mav;
    	
    	
    }
    
    
    
    
    
    

}
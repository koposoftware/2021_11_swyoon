package kr.ac.kopo.reservation.controller;

import com.google.gson.Gson;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.service.ReservationService;
import kr.ac.kopo.reservation.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.List;

@Controller
public class ReservationController {


    @Autowired
    private ReservationService service;

    // Main searchList
    @RequestMapping("/client/searchList")
    public ModelAndView searchList(){
        ModelAndView mav = new ModelAndView();

        LocalDate now = LocalDate.now(); // 현재 날짜

        List<BankerVO> bankerVOList = service.searchBanker(); // 모든 pb 리스트 조회
        List<BankerVO> checkBankerList = service.availableSearchBanker(now.toString()); // 현재 날짜의 상담 예약이 있는 pb들 조회

        // 상담 가능한 PB 조회
        for(int i = 0; i < bankerVOList.size(); i ++){
            for(int j = 0 ; j < checkBankerList.size() ; j ++ ){
                if(checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())){
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }

        mav.addObject("schedulerDate" , now.toString());
        mav.addObject("bankerList" , bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }
    
    
    @ResponseBody
    @PostMapping("client/sendReservation")
    public String insertReservation(@RequestBody String sendMessage) {
        System.out.println(sendMessage);
        Gson gson = new Gson();

        ReservationVO reservationVO = gson.fromJson(sendMessage, ReservationVO.class);

        int check = service.insertReservation(reservationVO);

        if (check != 0) {
            System.out.println("예약 완료");
        }
        return "예약완료";
    }
    
    @GetMapping("/client/searchBySector")
    public ModelAndView searchBySector(HttpServletRequest request){

        ModelAndView mav = new ModelAndView();

        String sector = (String)request.getParameter("sector");
        String date = (String)request.getParameter("schedulerDate");

        List<BankerVO> bankerVOList = service.searchBySector(sector);
        List<BankerVO> checkBankerList = service.availableSearchBanker(date.trim());

        for(BankerVO b :bankerVOList){
            System.out.println(b);
        }
        // 상담 가능한 PB 조회
        for(int i = 0; i < bankerVOList.size(); i ++){
            for(int j = 0 ; j < checkBankerList.size() ; j ++ ){
                if(checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())){
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        mav.addObject("sector" , sector);
        mav.addObject("schedulerDate" , date);
        mav.addObject("bankerList" , bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

    @PostMapping("/client/searchDate")
    public ModelAndView searchDate(HttpServletRequest request){


        String sector = (String)request.getParameter("sector");
        String date = (String)request.getParameter("schedulerDate").trim();

        List<BankerVO> bankerVOList = service.searchBySector(sector);
        List<BankerVO> checkBankerList = service.availableSearchBanker(date);

        // 상담 가능한 PB 조회
        for(int i = 0; i < bankerVOList.size(); i ++){
            for(int j = 0 ; j < checkBankerList.size() ; j ++ ){
                if(checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())){
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        ModelAndView mav = new ModelAndView();
        mav.addObject("schedulerDate" , date);
        mav.addObject("bankerList" , bankerVOList);
        mav.addObject("sector" , sector);
        mav.setViewName("client/searchBanker/bankerList");
        return mav;


    }


}

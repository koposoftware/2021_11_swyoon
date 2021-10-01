package kr.ac.kopo.reservation.controller;

import com.google.gson.Gson;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.reservation.service.ReservationService;
import kr.ac.kopo.reservation.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

@Controller
public class ReservationController {


    @Autowired
    private ReservationService service;

    // Main searchList
    @RequestMapping("/client/searchList")
    public ModelAndView searchList(HttpSession session) {
        ModelAndView mav = new ModelAndView();

        LocalDate now = LocalDate.now(); // 현재 날짜

        List<BankerVO> bankerVOList = service.searchBanker(); // 모든 pb 리스트 조회
        List<BankerVO> checkBankerList = service.availableSearchBanker("2021-09-29"); // 현재 날짜의 상담 예약이 있는 pb들 조회

        // 상담 가능한 PB 조회
        for (int i = 0; i < bankerVOList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())) {
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        // 즐겨찾기 pb 조회
        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
        List<BankerVO> favoriteList = service.selectByFavorite(clientVO);


        // 상담 가능한 PB 조회
        for (int i = 0; i < favoriteList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(favoriteList.get(i).getPbName())) {
                    favoriteList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }

        List<HistoryVO> recentList = service.searchByRecentHistory();
        mav.addObject("recentList", recentList);

        mav.addObject("favoriteList", favoriteList);
        mav.addObject("schedulerDate", now.toString());
        mav.addObject("bankerList", bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

    @PostMapping("client/sendReservation")
    @ResponseBody
    public String insertReservation(@RequestBody String sendMessage) {
        System.out.println(sendMessage);
        Gson gson = new Gson();

        ReservationVO reservationVO = gson.fromJson(sendMessage, ReservationVO.class);
        System.out.println(reservationVO);
        int check = service.insertReservation(reservationVO);

        if (check != 0) {
            System.out.println("예약 완료");
        }
        return "예약완료";
    }

    @GetMapping("/client/searchBySector")
    public ModelAndView searchBySector(HttpServletRequest request) {

        ModelAndView mav = new ModelAndView();

        String sector = (String) request.getParameter("sector");
        String date = (String) request.getParameter("schedulerDate");

        List<BankerVO> bankerVOList = service.searchBySector(sector);
        List<BankerVO> checkBankerList = service.availableSearchBanker(date.trim());

        for (BankerVO b : bankerVOList) {
            System.out.println(b);
        }
        // 상담 가능한 PB 조회
        for (int i = 0; i < bankerVOList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())) {
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }

        List<HistoryVO> recentList = service.searchByRecentHistory();
        mav.addObject("recentList", recentList);
        mav.addObject("sector", sector);
        mav.addObject("schedulerDate", date);
        mav.addObject("bankerList", bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

    @PostMapping("/client/searchDate")
    public ModelAndView searchDate(HttpServletRequest request, HttpSession session) {


        String sector = (String) request.getParameter("sector");
        String date = (String) request.getParameter("schedulerDate").trim();

        List<BankerVO> bankerVOList = service.searchBySector(sector);
        List<BankerVO> checkBankerList = service.availableSearchBanker(date);

        // 상담 가능한 PB 조회
        for (int i = 0; i < bankerVOList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())) {
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        ModelAndView mav = new ModelAndView();
        List<HistoryVO> recentList = service.searchByRecentHistory();
        mav.addObject("recentList", recentList);

        session.setAttribute("schedulerDate", date);
        mav.addObject("schedulerDate", date);
        mav.addObject("bankerList", bankerVOList);
        mav.addObject("sector", sector);
        mav.setViewName("client/searchBanker/bankerList");
        return mav;
    }

    @GetMapping("/search/tagName")
    public ModelAndView searchTagName(String tagName, HttpServletRequest request) {


        ModelAndView mav = new ModelAndView();

        String date = (String) request.getParameter("schedulerDate");


        System.out.println("넘어온 tagName ? : " + tagName);

        List<BankerVO> bankerVOList = service.searchByTagName(tagName.trim());
        List<BankerVO> checkBankerList = service.availableSearchBanker(date.trim());


        // 상담 가능한 PB 조회
        for (int i = 0; i < bankerVOList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())) {
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        List<HistoryVO> recentList = service.searchByRecentHistory();

        for (HistoryVO h : recentList) {
            System.out.println("컨트롤러 recent :" + h);
        }
        mav.addObject("recentList", recentList);

        mav.addObject("targetTagName", tagName);
        mav.addObject("schedulerDate", date);
        mav.addObject("bankerList", bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }


}

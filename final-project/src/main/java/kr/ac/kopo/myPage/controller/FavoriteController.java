package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.FavoriteService;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import kr.ac.kopo.reservation.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

@Controller
public class FavoriteController {

    @Autowired
    FavoriteService favoriteService;

    @Autowired
    ReservationService reservationService;


    @RequestMapping("/client/myPage/favoriteList") // 마이페이지 내 즐겨찾기 목록 조회
    public ModelAndView viewFavoriteList(HttpSession session) {
        ModelAndView mav = new ModelAndView();

        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
        List<BankerVO> favoriteList = favoriteService.searchFavoriteList(clientVO);

        mav.addObject("favoriteList", favoriteList);
        mav.setViewName("client/myPage/favorite");

        return mav;
    }

    @ResponseBody
    @PostMapping("/client/favorite")
    public void addFavorite(@RequestBody FavoriteVO favoriteVO) { // favorite 추가

        System.out.println("넘어온 favorite 값 : " + favoriteVO);
        favoriteService.addFavorite(favoriteVO);
    }


    @PostMapping("/myPage/favoriteList/sector")
    public ModelAndView searchFavoriteBySector(@RequestBody String sector, HttpSession session) {

        ModelAndView mav = new ModelAndView();

        System.out.println("넘어온 섹터 : " + sector);
        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");

        List<BankerVO> favoriteListBySector = favoriteService.searchFavoriteListBySector(sector, clientVO);

        mav.addObject("favoriteListBySector", favoriteListBySector);
        mav.setViewName("client/myPage/favoritePage");
        return mav;
    }


    // MY페이지 -> 상담 예약
    @PostMapping("/client/searchList")
    public ModelAndView selecyByfavorite(HttpSession session, String codeNum) {
        ModelAndView mav = new ModelAndView();

        System.out.println("폼에서 넘어온 codeNum ?  :" + codeNum);

        LocalDate now = LocalDate.now(); // 현재 날짜

        List<BankerVO> bankerVOList = reservationService.searchBanker(); // 모든 pb 리스트 조회
        List<BankerVO> checkBankerList = reservationService.availableSearchBanker(now.toString()); // 현재 날짜의 상담 예약이 있는 pb들 조회

        // 상담 가능한 PB 조회
        for (int i = 0; i < bankerVOList.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())) {
                    bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }
        // 선택한 즐겨찾기 pb 조회
        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
        List<BankerVO> selectedPB = favoriteService.selectOneByFavorite(codeNum, clientVO);

        // 상담 가능한 PB 조회
        for (int i = 0; i < selectedPB.size(); i++) {
            for (int j = 0; j < checkBankerList.size(); j++) {
                if (checkBankerList.get(j).getPbName().equals(selectedPB.get(i).getPbName())) {
                    selectedPB.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                }
            }
        }

        mav.addObject("favoriteList", selectedPB);
        mav.addObject("schedulerDate", now.toString());
        mav.addObject("bankerList", bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

    @PostMapping("/myPage/favorite/delete")
    public ModelAndView deleteFavorite(@RequestBody BankerVO bankerVO, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        System.out.println("delete에 넘어온 bankerVO ?  : " + bankerVO);
        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");

        String sector = bankerVO.getMainField();
        String codeNum = Integer.toString(bankerVO.getCodeNum());

        System.out.println("넘어온 섹터 : " + sector);
        System.out.println("넘어온 codeNum : " + codeNum);

        // 목록 제거
        favoriteService.deleteFavorite(codeNum, clientVO);

        List<BankerVO> favoriteListBySector = favoriteService.searchFavoriteListBySector(sector, clientVO);

        mav.addObject("favoriteListBySector", favoriteListBySector);
        mav.setViewName("client/myPage/favoritePage");

        return mav;

    }
}

package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.HistoryService;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.InquiryVO;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HistoryController {

    @Autowired
    HistoryService historyService;


    @PostMapping("/saveHistory")
    @ResponseBody
    public String saveHistory(@RequestBody HistoryVO historyVO) {

        System.out.println("is historyVO : " + historyVO);
        historyService.saveHistory(historyVO);

        return "상담내역 저장 완료";
    }

    @GetMapping("/client/myPage/history")
    public String viewClientHistory(PagingVO vo, Model model
            , @RequestParam(value = "nowPage", required = false) String nowPage
            , @RequestParam(value = "cntPerPage", required = false) String cntPerPage, HttpSession session) {

        System.out.println("nowPage : " + nowPage);
        System.out.println("cntPerPage : " + cntPerPage);


        int total = historyService.countBoard();
        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }
        vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
        vo.setUserId(clientVO.getUserId());
        System.out.println(" vo ? :" + vo);

        model.addAttribute("paging", vo);
        model.addAttribute("historyList", historyService.selectAllHistory(vo));

        return "client/myPage/history";
    }

    @GetMapping("/pb/history")
    public String viewPBHistory(PagingVO vo, Model model
            , @RequestParam(value = "nowPage", required = false) String nowPage
            , @RequestParam(value = "cntPerPage", required = false) String cntPerPage, HttpSession session) {

        System.out.println("nowPage : " + nowPage);
        System.out.println("cntPerPage : " + cntPerPage);


        int total = historyService.countBoard();
        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }
        vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

        BankerVO bankerVO = (BankerVO) session.getAttribute("bankerVO");
        vo.setPbCodeNum(bankerVO.getCodeNum());
        System.out.println(" vo ? :" + vo);


        model.addAttribute("paging", vo);
        model.addAttribute("historyList", historyService.selectAllHistoryByBanker(vo));

        return "pb/history/historyList";
    }

    // 상담 내역 detail + 문의글 조회
    @GetMapping("/client/historyDetail")
    public ModelAndView viewDetail(int roomNumber) {
        System.out.println("컨트롤러 넘어온 roomNumber : " + roomNumber);

        ModelAndView mav = new ModelAndView();

        HistoryVO historyVO = historyService.selectOneHistory(roomNumber);

        InquiryVO inquiryVO = new InquiryVO();
        inquiryVO.setRoomNumber(roomNumber);

        List<InquiryVO> inquiryList = historyService.selectInquiry(inquiryVO);

        for (InquiryVO i : inquiryList) {
            System.out.println("넘어온 인콰이어 : " + i);
        }

        for (int i = 0; i < inquiryList.size(); i++) {

            System.out.println(inquiryList.get(i).getInquiryId());

        }


        mav.addObject("inquiryList", inquiryList);
        mav.addObject("historyVO", historyVO);
        mav.setViewName("client/myPage/historyDetail");

        return mav;
    }

//    // 문의글 저장 후 목록 보이기
//    @PostMapping("/client/register/inquiry")
//    @ResponseBody
//    public List<InquiryVO> registerInquiry(@RequestBody InquiryVO inquiryVO) {
//
//        System.out.println("컨트롤러로 넘어온 inquiryVO : " + inquiryVO);
//
//        List<InquiryVO> inquiryList = historyService.insertInquiry(inquiryVO);
//
//        return inquiryList;
//    }

    // 문의글 저장 후 목록 보이기
    @RequestMapping("/client/register/inquiry")
    public ModelAndView registerInquiry(@RequestBody InquiryVO inquiryVO, HttpSession session) {

        ModelAndView mav = new ModelAndView();

        System.out.println("컨트롤러로 넘어온 inquiryVO : " + inquiryVO);

        BankerVO bankerVO = (BankerVO) session.getAttribute("bankerVO");

        String answer = null;

        if (bankerVO != null) {

            answer = bankerVO.getPbName();
        }

        List<InquiryVO> inquiryList = historyService.insertInquiry(inquiryVO, answer);

        for (InquiryVO i : inquiryList) {
            System.out.println("i : " + i);
        }


        mav.setViewName("client/myPage/inquiry");
        mav.addObject("inquiryList", inquiryList);

        return mav;
    }


}

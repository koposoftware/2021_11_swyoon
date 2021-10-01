package kr.ac.kopo.scheduler.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.scheduler.service.SchedulerService;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BankerScheduleController {

    @Autowired
    private SchedulerService service;


    //일정 관리 페이지
    @RequestMapping(value = "/pb/scheduler")
    public String schedule(Model model, HttpSession session) throws Exception {

        BankerVO banker = (BankerVO) session.getAttribute("bankerVO");

        List<SchedulerVO> schedulerVO = service.showSchedule(banker);


        model.addAttribute("showSchedule", schedulerVO);


        return "pb/reservation/schedule";
    }


    //일정 추가 팝업
    @RequestMapping(value = "/pb/schedulePopup")
    public String test2() throws Exception {
        return "pb/reservation/schedulePopup";
    }

    //일정 추가 버튼 클릭 Ajax
    @ResponseBody
    @RequestMapping(value = "/pb/addSchedule", method = RequestMethod.POST)
    public Map<Object, Object> addSchedule(@RequestBody SchedulerVO schedulerVO, HttpSession session) throws Exception {
        Map<Object, Object> map = new HashMap<>();

        System.out.println("controller :" + schedulerVO);

        BankerVO bankVO = (BankerVO) session.getAttribute("bankerVO");
        service.addSchedule(schedulerVO, bankVO);

        return map;
    }

    //일정 보이기 (임시)
    @ResponseBody
    @RequestMapping(value = "/pb/showSchedule")
    public List<SchedulerVO> showSchedule(HttpSession session) throws Exception {

        BankerVO banker = (BankerVO) session.getAttribute("bankerVO");

        List<SchedulerVO> list = service.showSchedule(banker);

        return list;
    }


}

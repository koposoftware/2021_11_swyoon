package kr.ac.kopo.myPage.controller;


import kr.ac.kopo.reservation.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {


    @Autowired
    ReservationService reservationService;


    @RequestMapping("/client/myPage")
    public String viewMyPage() {

        return "client/myPage/myPageMain";
    }


}

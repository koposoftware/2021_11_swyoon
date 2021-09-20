package kr.ac.kopo.myPage.controller;


import kr.ac.kopo.myPage.service.MyPageService;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyPageController {


    @Autowired
    MyPageService service;


    @RequestMapping("/client/myPage")
    public String viewMyPage(){

        return "client/myPage/myPageMain";
    }


    @RequestMapping("/client/myPage/history")
    public String viewHistory(){


        return "client/myPage/history";
    }

    @RequestMapping("/client/myPage/favoriteList")
    public String viewFavoriteList(){


        return "client/myPage/favorite";
    }

    @ResponseBody
    @PostMapping("/client/favorite")
    public void viewTest (@RequestBody FavoriteVO favoriteVO){

        System.out.println("넘어온 favorite 값 : "+ favoriteVO);
        service.addFavorite(favoriteVO);
    }






}

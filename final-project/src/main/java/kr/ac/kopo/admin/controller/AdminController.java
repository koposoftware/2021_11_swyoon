package kr.ac.kopo.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {


    @RequestMapping("/admin")
    public String viewAdmin(){

        return "admin/index";

    }


}

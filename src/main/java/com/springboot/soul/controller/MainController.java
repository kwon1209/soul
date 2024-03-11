package com.springboot.soul.controller;

import com.springboot.soul.VO.UserVO;
import com.springboot.soul.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    private final UserRegisterService userRegisterService;

    @Autowired
    public MainController(UserRegisterService userRegisterService) {
        this.userRegisterService = userRegisterService;
    }

    @RequestMapping(value = "/index.do")
    public ModelAndView index() {
        System.out.println("index method called");
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "/main/main.do")
    public String mainLogin(Model model) {
        System.out.println("mainLogin method called");
        String user = "test";
        model.addAttribute("user", user);
        return "main/main";
    }

    @RequestMapping(value = "/modal/joinUser.do")
    public ModelAndView openJoinModal() {
        System.out.println("openJoinModal method called");
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }


    @RequestMapping(value = "/userRegisterCheck.do")
    @ResponseBody
    public int userRegisterCheck(UserVO userVO) throws Exception {
        System.out.println("userRegisterCheck method called");
        return userRegisterService.userRegisterCheck(userVO);
    }
}

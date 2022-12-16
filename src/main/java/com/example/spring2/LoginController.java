package com.example.spring2;

import com.example.spring2.user.UserServiceImpl;
import com.example.spring2.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value="/login")
public class LoginController {
    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/loginOk",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo){
        String returnURL = "";
        if (session.getAttribute("login") != null ){
            session.removeAttribute("login");
        }
        UserVO loginvo = service.getUser(vo);
        if ( loginvo != null ){ // 로그인 성공
            System.out.println("로그인 성공!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/game/list";
        }else { // 로그인 실패
            System.out.println("로그인 실패!");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    // 로그아웃 하는 부분
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("login");
        session.invalidate();
        return "redirect:/login/login";
    }

    @RequestMapping(value = "/signup")
    public String signUp(HttpSession session, Model model){
        if(session.getAttribute("login")!=null)
            return "redirect:/board/list";
        model.addAttribute("userList",service.getUserList());
        return "signup";
    }

    @RequestMapping(value = "/signupok")
    public String signUpOk(UserVO vo){
        service.addUser(vo);
        return "redirect:/login/login";
    }
}


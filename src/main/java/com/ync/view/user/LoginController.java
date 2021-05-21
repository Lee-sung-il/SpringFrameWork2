package com.ync.view.user;

import com.ync.biz.user.UserVO;
import com.ync.biz.user.impl.UserDAO;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String loginView(UserVO vo) {
        System.out.println("로그인 화면으로 이동...");
        vo.setId("test");
        vo.setPassword("test123");
        return "login.jsp";
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
        System.out.println("로그인 인증 처리...");
        UserVO user = userDAO.getUser(vo);
        if (user != null) {
            session.setAttribute("userName", user.getName());
            return "getBoardList.do";
        } else
            return "login.jsp";
    }
}

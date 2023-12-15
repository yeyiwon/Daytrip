package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.URLEncoder;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserDao userDao;

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @GetMapping("/save")
    public String saveForm() {
        return "join";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute UserDto user, Model m) throws Exception {
        if (!isValid(user.getU_id())) {
            String msg = "사용중인 아이디 입니다.";
            System.out.println(msg);
            msg = URLEncoder.encode(msg, "utf-8");
            m.addAttribute("msg", msg);
            return "redirect:/user/join";
        } else {
            userDao.insert(user);
            return "redirect:/login/login"; // 성공하면 로그인페이지로
        }
    }

    private boolean isValid(String U_id) throws Exception {
        return userDao.loginChk(U_id) == 0;
    }
}
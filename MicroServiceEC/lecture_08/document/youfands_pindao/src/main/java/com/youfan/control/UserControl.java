package com.youfan.control;

import com.alibaba.fastjson.JSONObject;
import com.youfan.entity.UserInfo;
import com.youfan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping(value = "userControl")
public class UserControl {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "toInsertUser")
    public String toInsertUser(){
        return "beautiful/register";
    }


    @RequestMapping(value = "insertUser",method = RequestMethod.POST)
    public void insertUser(UserInfo userInfo){
        userService.insertUser(userInfo);
    }

    @RequestMapping(value = "findUserById")
    public String findUserById(long id,Model model){
        UserInfo userInfo = userService.findUserById(id);
        model.addAttribute("userinfo",userInfo);
        return "viewUser";
    }

    @RequestMapping(value = "toupdateUserById")
    public  String toupdateUserById(long id, Model model) {
        UserInfo userInfo = userService.findUserById(id);
        model.addAttribute("userinfo",userInfo);
        return "updateUser";
    }

    @RequestMapping(value = "updateUserById",method = RequestMethod.POST)
    public void updateUserById(UserInfo userinfo){
            userService.updateUserById(userinfo);
    }

    @RequestMapping(value = "toLogin")
    public String toLogin() {
        return "beautiful/login2";
    }

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(String account, String passw, Model model, HttpServletRequest request){
        Map<String,String> resultMap = userService.login(account,passw);
        String reuslt = resultMap.get("result");
        String message = resultMap.get("message");
        if(!"true".equals(reuslt)){
            model.addAttribute("message",message);
            return "loginFail";
        }
        String userInfoString = resultMap.get("userInfo");
        UserInfo userInfo = JSONObject.parseObject(userInfoString,UserInfo.class);
        HttpSession session = request.getSession();
        session.setAttribute("userinfo",userInfo);
        return "loginSuccess";
    }





}

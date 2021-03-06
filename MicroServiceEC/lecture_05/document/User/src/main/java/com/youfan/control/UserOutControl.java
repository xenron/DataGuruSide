package com.youfan.control;

import com.youfan.entity.UserInfo;
import com.youfan.service.UserService;
import com.youfan.vo.ConstomUserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "userOutinfo")
public class UserOutControl {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "toInsertUser")
    public String toInsertUser(){
        return "insertUser";
    }


    @RequestMapping(value = "insertUser")
    public void insertUser(@RequestBody  UserInfo userInfo){
        userService.insertUserInfo(userInfo);
    }

    @RequestMapping(value = "findUserById")
    public UserInfo findUserById(@RequestParam  long id){
        UserInfo userInfo = userService.findUserById(id);
        return userInfo;
    }

    @RequestMapping(value = "updateUserById")
    public void updateUserById(@RequestBody UserInfo userinfo) {
        userService.updateUserById(userinfo);
    }

    @RequestMapping(value = "toLogin")
    public String toLogin() {
        return "toLoginUser";
    }

    @RequestMapping(value = "login")
    public Map<String,String> login(@RequestParam  String account,@RequestParam  String passw) {
        Map<String,String> resultMap = userService.validLogin(account,passw);
        return resultMap;
    }


}

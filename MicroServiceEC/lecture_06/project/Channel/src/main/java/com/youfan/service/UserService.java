package com.youfan.service;

import com.youfan.entity.ProductInfo;
import com.youfan.entity.UserInfo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@FeignClient(value = "youfands-user")
public interface UserService {

    @RequestMapping(value = "userOutinfo/insertUser")
    public void insertUser(@RequestBody UserInfo userInfo);

    @RequestMapping(value = "userOutinfo/findUserById")
    public UserInfo findUserById(@RequestParam(value = "id")  long id);

    @RequestMapping(value = "userOutinfo/updateUserById")
    public void updateUserById(@RequestBody UserInfo userinfo);

    @RequestMapping(value = "userOutinfo/login")
    public Map<String,String> login(@RequestParam(value = "account")  String account, @RequestParam(value = "passw")  String passw);
}

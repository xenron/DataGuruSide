package com.youfan.service;

import com.youfan.entity.UserInfo;
import com.youfan.vo.ConstomUserInfo;
import com.youfan.vo.UserInfoVo;

import java.util.List;
import java.util.Map;

public interface UserService {
    public void insertUserInfo(UserInfo userinfo);
    public UserInfo findUserById(Long id);
    public void updateUserById(UserInfo userinfo);
    public List<UserInfo> findUserInfoByVo(ConstomUserInfo constomUserInfo);
    public Map<String,String> validLogin(String account, String passw);
}

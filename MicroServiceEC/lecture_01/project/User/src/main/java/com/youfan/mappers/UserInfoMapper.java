package com.youfan.mappers;

import com.youfan.entity.UserInfo;
import com.youfan.vo.UserInfoVo;

import java.util.List;

public interface UserInfoMapper {
    public void insertUserInfo(UserInfo userinfo);
    public UserInfo findUserById(UserInfo userinfo);
    public void updateUserById(UserInfo userinfo);
    public List<UserInfo> findUserInfoByVo(UserInfoVo userInfoVo);
    public UserInfo findByUsername(UserInfo userinfo);
}

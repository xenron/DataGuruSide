package com.youfan.dao.impl;

import com.youfan.dao.UserDao;
import com.youfan.entity.UserInfo;
import com.youfan.mappers.UserInfoMapper;
import com.youfan.vo.UserInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserDaoImpl implements UserDao {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public void insertUserInfo(UserInfo userinfo) {
        userInfoMapper.insertUserInfo(userinfo);
    }

    @Override
    public UserInfo findUserById(UserInfo userinfo) {
        return userInfoMapper.findUserById(userinfo);
    }

    @Override
    public void updateUserById(UserInfo userinfo) {
        userInfoMapper.updateUserById(userinfo);
    }

    @Override
    public List<UserInfo> findUserInfoByVo(UserInfoVo userInfoVo) {
        return userInfoMapper.findUserInfoByVo(userInfoVo);
    }

    @Override
    public UserInfo findByUsername(UserInfo userinfo) {
        return userInfoMapper.findByUsername(userinfo);
    }


}

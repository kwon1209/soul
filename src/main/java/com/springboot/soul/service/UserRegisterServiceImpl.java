package com.springboot.soul.service;

import com.springboot.soul.DAO.UserMapper;
import com.springboot.soul.VO.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserRegisterService")
public class UserRegisterServiceImpl implements UserRegisterService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int userRegisterCheck(UserVO userVO) throws Exception{
            return userMapper.userRegisterCheck(userVO); 
    }
}
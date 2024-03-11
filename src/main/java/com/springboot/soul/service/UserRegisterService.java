package com.springboot.soul.service;

import com.springboot.soul.VO.UserVO;


public interface UserRegisterService {

    int userRegisterCheck(UserVO userVO) throws Exception;
}

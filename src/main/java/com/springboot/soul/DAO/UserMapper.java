package com.springboot.soul.DAO;

import com.springboot.soul.VO.UserVO;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    public int userRegisterCheck(UserVO userVO) throws Exception;
}

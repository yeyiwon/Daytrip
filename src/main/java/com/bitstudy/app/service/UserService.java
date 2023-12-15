package com.bitstudy.app.service;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {

    @Autowired
    UserDao userDao;

    public int insert(UserDto userDto) {
        return userDao.insert(userDto);
    }

    public boolean loginChk(String U_id) {
        try {
            return userDao.loginChk(U_id) > 0;
        } catch (Exception e) {
            throw new RuntimeException("사용자 ID 확인 중 오류가 발생했습니다.", e);
        }
    }
}
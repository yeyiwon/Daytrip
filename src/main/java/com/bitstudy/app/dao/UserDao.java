package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import java.sql.SQLException;

public interface UserDao {
    void deleteAll() throws SQLException;

    int insert(UserDto user);

    int loginChk(String U_id) throws Exception;
}

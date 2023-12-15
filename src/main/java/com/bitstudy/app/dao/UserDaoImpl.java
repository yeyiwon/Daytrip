package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.userMapper.";

    @Override
    public void deleteAll() throws SQLException {
        session.delete(namespace + "deleteAll");
    }

    @Override
    public int insert(UserDto userDto) {
        return session.insert(namespace + "insert", userDto);
    }

    @Override
    public int loginChk(String U_id) throws Exception {
        return session.selectOne(namespace + "loginChk", U_id);
    }
}

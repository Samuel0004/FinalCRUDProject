package com.example.spring2.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAO {
    @Autowired
    SqlSessionTemplate sqlSession;
    public UserVO getUser(UserVO vo) {
        return sqlSession.selectOne("User.getUser", vo);
    }

    public int addUser(UserVO vo){
        return sqlSession.insert("User.addUser",vo);
    }
    public List<String> getUserList(){
        return sqlSession.selectList("User.getUserIds");
    }
}
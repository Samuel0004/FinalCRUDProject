package com.example.spring2.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl {
    @Autowired
    UserDAO userDAO;
    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }

    public int addUser(UserVO vo){
        return userDAO.addUser(vo);
    }

    public List<String> getUserList(){
        return userDAO.getUserList();
    }
}


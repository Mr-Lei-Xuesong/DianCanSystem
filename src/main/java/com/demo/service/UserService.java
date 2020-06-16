package com.demo.service;

import com.demo.entity.User;
import com.demo.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;

    public User FindUserById(Integer id) {
        return userMapper.FindUserById(id);
    }

    public User login(User user) {
        return userMapper.login(user);
    }

    public int AddUser(User user) {
        return userMapper.AddUser(user);
    }

    public int UpdateUserById(User user) {
        return userMapper.UpdateUserById(user);
    }

    public int DeleteUserById(Integer id) {
        return userMapper.DeleteUserById(id);
    }
}

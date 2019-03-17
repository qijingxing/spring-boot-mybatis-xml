package com.neo.service;

import com.neo.mapper.UserMapper;
import com.neo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author qijingxing
 * @create 2019-03-16 20:43
 */
@Service
public class LoginService {
    @Autowired
    private UserMapper userMapper;


    public User verifyLogin(User user) {
        return userMapper.getUserIfo(user);
    }
}

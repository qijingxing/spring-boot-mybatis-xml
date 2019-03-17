package com.neo.controller;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.neo.WebSecurityConfig;
import com.neo.model.User;
import com.neo.service.LoginService;
import org.springframework.beans.NotReadablePropertyException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author qijingxing
 * @create 2019-03-16 20:37
 */
@RestController
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value ="/loginVerify" , method = RequestMethod.GET)
    public Object loginVerify(String username, String password, HttpSession session){
        User user = new User();
        user.setUserName(username);
        user.setPassWord(password);

        User verify = loginService.verifyLogin(user);
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        HashMap<String, Object> data = new HashMap<String, Object>();
        int code = 200;
        data.put("code", code);
        data.put("data",user);


        Object o = JSONObject.toJSON(data);
        if (verify !=null) {
            session.setAttribute(WebSecurityConfig.SESSION_KEY, username);
            return o;
           // return "index";
        } else {
            //return "redirect:/login";
            return null;
        }
    }


}

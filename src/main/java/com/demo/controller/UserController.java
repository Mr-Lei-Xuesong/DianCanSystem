package com.demo.controller;

import com.demo.entity.User;
import com.demo.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "用户管理接口")
@RestController()
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @ApiOperation("用户登录的接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", defaultValue = "admin", required = true),
            @ApiImplicitParam(name = "password", value = "密码", defaultValue = "123456", required = true)
    })
    @GetMapping("/login")
    public User login(String username, String password) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        return userService.login(user);
    }
}

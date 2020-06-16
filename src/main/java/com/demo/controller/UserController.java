package com.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController()
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public List<String >login(){
           List<String > list = new ArrayList<>();
           list.add("admin");
           list.add("admin");
           return list;
    }
}

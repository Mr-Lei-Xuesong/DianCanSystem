package com.demo.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@Api(tags = "首页管理接口")
@RestController
@RequestMapping("/home")
public class HomeController {

    @ApiOperation("首页轮播图片")
    @GetMapping("/banner")
    public List<String> banner() {
        ArrayList<String> list = new ArrayList<>();
        list.add("http://www.shang360.com/upload/article/20171027/52959160541509088204.jpg");
        list.add("http://hot.23.cn/upload/article/20160421/30676664971461207991.jpg");
        list.add("http://img.zcool.cn/community/01a1f15998738b0000002129afd94c.jpg@2o.jpg");
        return list;
    }
}

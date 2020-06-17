package com.demo.controller;

import com.demo.entity.Bus;
import com.demo.service.BusService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Api(tags = "首页管理接口")
@RestController
@RequestMapping("/home")
public class HomeController {

    @Autowired
    BusService busService;

    @RequestMapping("/init")
    @ApiOperation("用户初始化数据")
    public HashMap<String, Object> init() {
        ArrayList<String> pic = new ArrayList<>();  //首页轮播图
        pic.add("http://www.shang360.com/upload/article/20171027/52959160541509088204.jpg");
        pic.add("http://hot.23.cn/upload/article/20160421/30676664971461207991.jpg");
        pic.add("http://img.zcool.cn/community/01a1f15998738b0000002129afd94c.jpg@2o.jpg");
        HashMap<String, Object> map = new HashMap<>();
        map.put("banner", pic);  //广告栏
        List<Bus> bus = busService.FindBusAll(); //商家信息
        map.put("businfo", bus);
        return map;
    }
}

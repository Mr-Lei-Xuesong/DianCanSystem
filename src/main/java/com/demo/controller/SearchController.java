package com.demo.controller;


import com.demo.entity.Bus;
import com.demo.service.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/search")
public class SearchController {


    @Autowired
    BusService busService;


    /**
     * 模糊搜索商家
     * @param busName
     * @return
     */
    @PostMapping("/bus")
    public List<Bus> findBus(@RequestParam("busName") String busName){
          List<Bus>  buss =  busService.FindBusByNameLike(busName);
          return buss;
    }
}

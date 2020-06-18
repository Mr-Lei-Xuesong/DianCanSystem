package com.demo.controller;

import com.demo.entity.Bus;
import com.demo.service.BusService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(tags = "搜索商家接口")
@RestController
@RequestMapping("/search")
public class SearchController {

    @Autowired
    BusService busService;

    /**
     * 模糊搜索商家
     *
     * @param busName
     * @return
     */
    @ApiOperation("模糊查询商家")
    @PostMapping("/bus")
    @ApiImplicitParam(name = "busName", value = "商家名", required = true)
    public List<Bus> findBus(@RequestParam("busName") String busName) {
        List<Bus> buss = busService.FindBusByNameLike(busName);
        return buss;
    }
}

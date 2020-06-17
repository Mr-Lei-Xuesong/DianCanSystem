package com.demo.service;

import com.demo.entity.Bus;
import com.demo.mapper.BusMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusService {
    @Autowired
    BusMapper busMapper;

    public List<Bus> FindBusAll() {
        return busMapper.FindBusAll();
    }

    public List<Bus> FindBusByNameLike(String name) {
        return busMapper.FindBusByNameLike(name);
    }

    public Bus FindBusByName(String name) {
        return busMapper.FindBusByName(name);
    }
}

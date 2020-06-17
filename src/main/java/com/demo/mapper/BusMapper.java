package com.demo.mapper;

import com.demo.entity.Bus;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface BusMapper {

    //查询所有
    List<Bus> FindBusAll();

    //根据名称模糊查询所有
    List<Bus> FindBusByNameLike(String name);

    //根据名称查询商家
    Bus FindBusByName(String name);
}

package com.demo.mapper;

import com.demo.entity.Wupin;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface WupinMapper {
    //根据id查询商品
    Wupin FindWupinById(Integer id);

    //根据名称模糊查询
    List<Wupin> FindWupinByNameLike(String name);

    //增加商品
    int AddWupin(Wupin wupin);

    //修改商品
    int UpdateWupinById(Wupin wupin);

    //删除商品
    int DeleteWupinById(Integer id);
}

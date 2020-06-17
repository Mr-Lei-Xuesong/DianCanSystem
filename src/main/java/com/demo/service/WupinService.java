package com.demo.service;

import com.demo.entity.Wupin;
import com.demo.mapper.WupinMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WupinService {
    @Autowired
    WupinMapper wupinMapper;

    public Wupin FindWupinById(Integer id) {
        return wupinMapper.FindWupinById(id);
    }

    public List<Wupin> FindWupinByNameLike(String name) {
        return wupinMapper.FindWupinByNameLike(name);
    }

    public int AddWupin(Wupin wupin) {
        return wupinMapper.AddWupin(wupin);
    }

    public int UpdateWupinById(Wupin wupin) {
        return wupinMapper.UpdateWupinById(wupin);
    }

    public int DeleteWupinById(Integer id) {
        return wupinMapper.DeleteWupinById(id);
    }
}

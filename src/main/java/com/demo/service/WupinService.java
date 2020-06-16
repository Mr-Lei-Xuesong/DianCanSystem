package com.demo.service;

import com.demo.mapper.WupinMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WupinService {
    @Autowired
    WupinMapper wupinMapper;
}

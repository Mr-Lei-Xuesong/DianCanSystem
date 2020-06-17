package com.demo;

import com.demo.entity.User;
import com.demo.entity.Wupin;
import com.demo.service.UserService;
import com.demo.service.WupinService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class DianCanSystemApplicationTests {
    @Autowired
    UserService userService;
    @Autowired
    WupinService wupinService;

    @Test
    void contextLoads() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("123456");
        User login = userService.login(user);
        System.out.println(login);
    }

    @Test
    void testWupinService(){
//        Wupin wupin = wupinService.FindWupinById(1);
//        List<Wupin> wupin = wupinService.FindWupinByNameLike("香");
        Wupin wupin=new Wupin();
        wupin.setPrice(17.0);
        wupin.setName("红烧茄子");
        wupin.setDes("超级好吃的茄子");
        wupin.setNum(8);
        wupinService.AddWupin(wupin);
//        System.out.println(wupin);
    }
}

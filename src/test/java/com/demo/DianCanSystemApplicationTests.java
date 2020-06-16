package com.demo;

import com.demo.entity.User;
import com.demo.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DianCanSystemApplicationTests {
    @Autowired
    UserService userService;

    @Test
    void contextLoads() {
        User login = userService.login("admin");
        System.out.println(login);
    }

}

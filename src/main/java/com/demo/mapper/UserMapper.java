package com.demo.mapper;

import com.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface UserMapper {
    //根据id查询用户
    User FindUserById(Integer id);

    //登录
    User login(String username);

    //增加用户
    int AddUser(User user);

    //修改用户
    int UpdateUserById(User user);

    //删除用户
    int DeleteUserById(Integer id);
}

package com.demo.mapper;

<<<<<<< HEAD
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface UserMapper {

=======
import com.demo.entity.User;
import io.swagger.models.auth.In;

public interface UserMapper {

    //根据id查询用户
    User  FindUserById(Integer id);
    //登录
    User  login(String username);
    //增加用户
    void  AddUser(User user);
    //修改用户
    int UpdateUserById(User user);
    //删除用户
    int  DeleteUserById(Integer id);
>>>>>>> origin/master
}

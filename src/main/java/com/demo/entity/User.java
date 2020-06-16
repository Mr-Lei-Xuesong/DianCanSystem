package com.demo.entity;

<<<<<<< HEAD
=======

>>>>>>> 9d2bae240194cde4a07ee546f467265133bb04db
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("用户实体类")
public class User {
  @ApiModelProperty("id")
  private Integer uid;
  @ApiModelProperty("用户名")
  private String username;
<<<<<<< HEAD
  private String password;
  private String address;
  private String assess;
  private String order;

=======
  @ApiModelProperty("用户密码")
  private String password;
  @ApiModelProperty("用户地址")
  private String address;
  @ApiModelProperty("用户评价")
  private String assess;
  @ApiModelProperty("订单")
  private String order;


>>>>>>> 9d2bae240194cde4a07ee546f467265133bb04db
}

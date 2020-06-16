package com.demo.entity;

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
  @ApiModelProperty("用户密码")
  private String password;
  @ApiModelProperty("用户地址")
  private String address;
  @ApiModelProperty("用户评价")
  private String assess;
  @ApiModelProperty("订单")
  private String order;

}

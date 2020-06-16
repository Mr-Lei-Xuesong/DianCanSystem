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
  private String password;
  private String address;
  private String assess;
  private String order;

}

package com.demo.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商品实体类")
public class Wupin {

    @ApiModelProperty("商品id")
    private Integer id;
    @ApiModelProperty("商品价格")
    private double price;
    @ApiModelProperty("商品名称")
    private String name;
    @ApiModelProperty("商品描述")
    private String des;
    @ApiModelProperty("商品数量")
    private long num;

}

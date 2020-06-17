package com.demo.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商家实体类")
public class Bus {

    @ApiModelProperty("sid")
    private Integer sid;
    @ApiModelProperty("商家名称")
    private String sname;
    @ApiModelProperty("销量")
    private Integer sxiao;
    @ApiModelProperty("评分")
    private double sping;
    @ApiModelProperty("图片")
    private String spic;
    @ApiModelProperty("商家描述")
    private String sdes;
    @ApiModelProperty("商品")
    private List<Wupin> wupins;

}

package com.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Wupin {

  private Integer id;
  private double price;
  private String name;
  private String des;
  private long num;

}

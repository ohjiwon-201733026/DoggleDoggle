package com.example.dgShopping.model;

import groovy.transform.ToString;
import groovy.transform.builder.Builder;
import lombok.Getter;
import lombok.Setter;

@ToString
@Getter
@Setter

public class dgProductVo {

	private int product_id;
	private String product_name;
	private int product_price;
	private String product_img;
}           

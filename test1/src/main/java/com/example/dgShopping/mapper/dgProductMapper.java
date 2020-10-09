package com.example.dgShopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.dgShopping.model.dgProductVo;

@Mapper
public interface dgProductMapper {
	public List<dgProductVo> ProductList();
}

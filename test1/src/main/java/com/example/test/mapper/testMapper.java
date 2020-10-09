package com.example.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test.model.testVo;

@Mapper
public interface testMapper {

	List<testVo> select();
}


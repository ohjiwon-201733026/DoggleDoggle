package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.test.mapper.testMapper;
import com.example.test.model.testVo;
import com.example.user.model.UserVo;

@Controller
@EnableAutoConfiguration
public class testController {
	
	 @Autowired
	 testMapper testMapper;
	
//	   @RequestMapping(value = "/")
//	   public String test(Model model, testVo testvo) {
//		   List<testVo> select = testMapper.select();
//		   model.addAttribute("select", select);
//		   System.out.println(testMapper.select().toString());
//		   System.out.println("gggggg");
//	      return "/test/test";
//	   }

	   
	   @RequestMapping(value = "/test2")
	   public String test2(Model model) {
	      return "test2";
	   }
	
	   @RequestMapping(value = "/hi")
	   public String hi(Model model, testVo testvo) {
		   List<testVo> select = testMapper.select();
		   model.addAttribute("select", select);
	      return "hi";
	   }

	   @RequestMapping(value = "/test")
	   public String test3(Model model, testVo testvo) {
	      return "test";
	   }

	
}


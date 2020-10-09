package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.test.mapper.testMapper;
import com.example.test.model.testVo;

@Controller
@EnableAutoConfiguration
public class demoController {
	
//	 @Autowired
//	 testMapper testMapper;
//	
//	   @RequestMapping(value = "/")
//	   public String hello(Model model, testVo testvo) {
//		   List<testVo> select = testMapper.select();
//		   model.addAttribute("select", select);
//		   System.out.println(testMapper.select().toString());
//		   System.out.println("gggggg");
//	      return "/test/test";
//	   }
}







//package com.example.test.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.example.test.mapper.testMapper;
//
//@Controller
////@RestController
//@EnableAutoConfiguration
//public class testController {
//	
//	 @Autowired
//	 testMapper testMapper;
//	
//
//	   @RequestMapping(value = "/test")
//	   public String test(Model model) {
//		   System.out.println(testMapper.select());
//	      return "dkslfksdl";
//	   }
//	
////	   @RequestMapping(value = "/")
////	   public String hello() throws Exception{
////	      return "hello world 안녕하세요";
////	   }
//	
//}


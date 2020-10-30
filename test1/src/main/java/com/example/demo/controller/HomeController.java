package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.KakoLogin.service.KakaoAPI;
 
@Controller
@EnableAutoConfiguration
public class HomeController {
 
    @Autowired
    private KakaoAPI kakao;
	
    @RequestMapping(value="/")
    public String index() {
        return "index";
    }
    
//    @RequestMapping(value="/login")
//    public String login() {
//    	
//        return "index";
//    }
    
    @RequestMapping(value="/login")
    public String login(@RequestParam("code") String code) {
        String access_Token = kakao.getAccessToken(code);
        System.out.println("controller access_token : " + access_Token);
        System.out.println("code : " + code);
        
        return "index";
    }
}


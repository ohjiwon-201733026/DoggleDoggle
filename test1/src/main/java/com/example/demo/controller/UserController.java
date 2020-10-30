package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.user.mapper.userMapper;
import com.example.user.model.UserVo;

@Controller
@EnableAutoConfiguration
public class UserController {

	@Autowired
	userMapper userMapper;
	BCryptPasswordEncoder cipal = new BCryptPasswordEncoder();
	
	@RequestMapping(value = "/UserList")
	public String UserList(Model model, Principal cipal) {
		//현재 로그인된 유저 아이디
	     UserVo userid = userMapper.readUser(cipal.getName());
	     model.addAttribute("userid", userid);
	     
//		System.out.println(cipal.getName());
		List<UserVo> user = userMapper.UserList();
		model.addAttribute("UserList", user);
		return "UserList";
	}
	

	
	//20.08.31 유진 중복확인
	@RequestMapping(value = "/overlapName" , method= { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int overlapName(UserVo vo) {
		return userMapper.overlapName(vo);
	}
	
	
	//20.09.01
	@RequestMapping(value = "/signUp")
	public String signUp() {
		return "signUp";
	}

	@RequestMapping(value = "/UserSignUp", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String UserSignUp(UserVo vo) {
		vo.setDg_user_pw(cipal.encode(vo.getDg_user_pw()));
//		System.out.println("값좀 확인해라 인간아 : "+vo.getDg_user_pw());
		//좀있다 작성해라
		userMapper.UserSignUp(vo);
		userMapper.insertUserAuthority(vo.getDg_user_id());
		return "/login";
	}
	
//	@RequestMapping(value = "/login")
//	public String login(UserVo vo) {
////		System.out.println(vo.toString()); 
//		return "login";
//	}
}

package com.example.demo.controller;

import java.util.List;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@EnableAutoConfiguration
public class dgShoppingController {

	@RequestMapping(value = "/ProductList")
	public String ProductList(Model model) {
//	     model.addAttribute("userid", userid);
//		model.addAttribute("UserList", user);
		return "ProductList";
	}
}

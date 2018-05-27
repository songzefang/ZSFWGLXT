package com.jcz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	@RequestMapping("menu")
	public String menu(){
		return "login";
	}
}

package com.jcz.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcz.dao.UserDao;
import com.jcz.entity.User;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	@RequestMapping("/toregister")
	public String toregister(){
		return "user/myregister";
	}
	@RequestMapping("/register")
	public String register(User user, Map<String,Object> map){
		userDao.add(user);
		map.put("username", user.getUsername());
		return "my";
	}
}

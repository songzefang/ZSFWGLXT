package com.jcz.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jcz.dao.UserDao;
import com.jcz.entity.JsonResult;
import com.jcz.entity.User;

@Controller
public class ListController {
	@Autowired
	private UserDao userDao;
	@RequestMapping("/page")
	public String goPage(){
		return "my/page";
	}
	@RequestMapping(value="/listUser/{page}", method=RequestMethod.GET )
	public String getListUser(@PathVariable("page") Integer page,Map<String,Object> map){
		Map<String,Object> m=new HashMap<String,Object>();
		int count=userDao.countUser();
		map.put("countPage",count);
		map.put("currentPage", page);
		m.put("start", page-1);
		m.put("pagesize", 3);
		map.put("userList", userDao.listUsers(m));
		
		return "my/list";
	}
	@ResponseBody
	@RequestMapping(value="/listJsonUser/{page}", method=RequestMethod.GET)
	public JsonResult getJsonListUser(@PathVariable("page") Integer page){
		Map<String,Object> m=new HashMap<String,Object>();
		//int count=userDao.countUser();
		//map.put("countPage",count);
		//map.put("currentPage", page);
		m.put("start", page-1);
		m.put("pagesize", 3);
		//map.put("userList", userDao.listUsers(m));
		List<User> list=userDao.listUsers(m);
		return JsonResult.getJsonResult(1, "成功返回结果", list);
	}
}

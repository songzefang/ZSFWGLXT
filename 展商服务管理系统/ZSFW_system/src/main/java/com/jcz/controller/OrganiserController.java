package com.jcz.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jcz.entity.Booth;
import com.jcz.entity.Organiser;
import com.jcz.service.impl.BoothServiceImpl;
import com.jcz.service.impl.OrganiserServiceImpl;

@Controller
@RequestMapping("/organiser")
public class OrganiserController {
	@Autowired
	private OrganiserServiceImpl organiserService;
	@Autowired
	private BoothServiceImpl boothService;

	@RequestMapping("/goRegister")
	public String goRegisterOrganiser() {
		return "organiser/register";
	}
	@RequestMapping("/goLogin")
	public String goLoginOrganiser() {
		return "organiser/login";
	}

	@RequestMapping("/register")
	public String registerOrganiser(Organiser o){
		System.out.println(o);
		o.setState(1);
		System.out.println(o);
		organiserService.registerOrganiser(o);
		return "organiser/login";
	}

	@RequestMapping("/login")
	public String loginOrganiser(@RequestParam("account") String account, @RequestParam("orgPwd") String orgPwd,Map<String,Object> map,HttpSession session){
		Map<String,Object> m=new HashMap<String,Object>();
		m.put("account", account);
		m.put("orgPwd", orgPwd);
		Organiser o=organiserService.loginOrganiser(m);
		if(o==null){
			map.put("code", "信息错误");
			return "organiser/login";
		}
		else{
			session.setAttribute("id", o.getId());
			session.setAttribute("account", o.getAccount());
			session.setAttribute("orgName", o.getOrgName());
			map.put("listBooth", boothService.listBooth(o.getId(),0));
			map.put("curPage", 1);
			int row=boothService.countBooth(o.getId());
			int rows=(row%5==0 ? row/5 :row/5+1 );
			map.put("totalPage", rows);
			return "organiser/index";
		}
		
	}
	
}

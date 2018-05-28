package com.jcz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UtilController {


	/*转到主办中心页面*/
	@RequestMapping("/zhubanyueding.do")
	public String yueding(){
		return "zhubanyueding";
	}
	/*转到展商中心页面*/
	@RequestMapping("/zs.do")
	public String zs(){
		return "zs";
	}
	/*转到主办方展会服务页面*/
	@RequestMapping("/about_exhibition.do")
	public String about(){
		return "about_exhibition";
	}
	/*转到活动日程页面*/
	@RequestMapping("/activity.do")
	public String activity(){
		return "activity";
	}
	/*转到活动日程页面*/
	@RequestMapping("/fwteam.do")
	public String fwteam(){
		return "fwteam";
	}
	/*转到展馆介绍页面*/
	@RequestMapping("/zgjs.do")
	public String zgjs(){
		return "zgjs";
	}
}

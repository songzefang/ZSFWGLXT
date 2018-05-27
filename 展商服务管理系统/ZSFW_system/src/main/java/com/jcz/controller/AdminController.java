package com.jcz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jcz.entity.Admin;
import com.jcz.service.impl.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService AdminService;
	
	
	@RequestMapping("/login.htm")
	public String tologin(){
		return "login";
	}
	
	@RequestMapping("/login.do")
	public String login(String usercode, String userpassword,HttpSession session) {
		Admin admin = new Admin();
		admin.setAdminName(usercode);
		admin.setAdminPwd(userpassword);
		Admin sAdmin = AdminService.login(admin);
		if(sAdmin!=null) {
			session.setAttribute("adminSession", sAdmin);
			return "frame"; 
		}else {
			return "redirect:login.htm";
		}
	}
	
	/*���������޸�ҳ��*/
	@RequestMapping("/pwdmodify.do")
	public String pwdmodify(HttpSession session,Model model){
		Admin admin=((Admin)session.getAttribute("adminSession"));
		if(admin.getId()==null){
			return "login";
		}
		//model.addAttribute("user", admin);
		return "pwdmodify";
	}
	
	/*�ύ�����޸ģ��ɹ���������½ҳ��*/
	@RequestMapping(value="/pwdmodifysave.do", method=RequestMethod.POST)
	public String pwdmodifysave(String oldpassword,String newpassword,HttpSession session){
		int flag = 0;
		Admin admin=(Admin)session.getAttribute("adminSession");
		System.out.println(oldpassword+" "+newpassword+" "+admin.getAdminPwd());
		if(oldpassword.equals(admin.getAdminPwd())) {
			admin.setAdminPwd(newpassword);
			
			flag=AdminService.update(admin);
		}
		if(flag>0){
			return "redirect:logout.do";
		}else{			
			return "redirect:pwdmodify.do";
		}
	}
	
	/*ע��*/
	@RequestMapping("/logout.do")
	public String loginout(HttpSession session){
		session.removeAttribute("adminSession");
		return "syserror";
	}
	
	
	
}

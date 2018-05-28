package com.jcz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jcz.entity.Exhibitor;
import com.jcz.service.impl.ExhibitorService;

@Controller
public class ExhibitorContorller {
	
	@Autowired
	ExhibitorService exhibitorService;
	
	/*转到展商登陆页面*/
	@RequestMapping("/zs-login.do")
	public String zslogin(){
		return "zs-login";
	}
	/*转到展商报名页面*/
	@RequestMapping("/zs-register.do")
	public String zsRegister(){
		return "zs-register";
	}
	
	//注册
	@RequestMapping("/zs-add.do")
	public String add(Exhibitor exhibitor) {
		System.out.println(exhibitor.toString());
		return "redirect:zs-login.do";
	}
	
	@RequestMapping("/exhList.do")
	public String exhList(Model model,@RequestParam(defaultValue="0") int limit,
    		@RequestParam(defaultValue="5") int offset) {
		List<Exhibitor> list = exhibitorService.selectList(limit,offset);
		int totalCount= list.size();
		int totalPageCount = 0;
		int currentPageNo = 1;
		if(totalCount%5 == 0) {
			totalPageCount = totalCount/5; 
		}else {
			totalPageCount = totalCount/5+1;
		}
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("currentPageNo", currentPageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("exhList", list);
		return "exhlist";
		
	}
	
	@RequestMapping("getBasicInfo.do")
	public String getBasicInfo(Integer id,Model model) {
		Exhibitor exhibitor = exhibitorService.selectBasicInfo(id);
		model.addAttribute("exh",exhibitor);
		return "exhbasicinfo";
	}
	
	@RequestMapping("getOtherInfo.do")
	public String getOtherInfo(Integer id,Model model) {
		Exhibitor exhibitor = exhibitorService.selectOtherInfo(id);
		model.addAttribute("exh",exhibitor);
		return "exhotherinfo";
	}
	
	@RequestMapping("getReceiveInfo.do")
	public String getReceiveInfo(Integer id,Model model) {
		Exhibitor exhibitor = exhibitorService.selectReceiveInfo(id);
		model.addAttribute("exh",exhibitor);
		return "exhreceiveinfo";
	}
	
	@RequestMapping("getCertificatesInfo.do")
	public String getCertificatesInfo(Integer id,Model model) {
		Exhibitor exhibitor = exhibitorService.selectCertificatesInfo(id);
		model.addAttribute("exh",exhibitor);
		return "exhcertificatesinfo";
	}
	
	@RequestMapping("updateState.do")
	public String updateState(Integer id) {
		exhibitorService.updateState(id);
		return "redirect:exhlist.do";
	}
	

}

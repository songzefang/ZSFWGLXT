package com.qnm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qnm.entity.Exhibitor;
import com.qnm.entity.Visitor;
import com.qnm.service.VisitorService;

@Controller
public class VisitorController {
	
	@Autowired
	VisitorService visitorService;
	
	
	@RequestMapping("vislogin")
	public String login(Visitor visitor) {
		Visitor rVisitor = visitorService.login(visitor);
		if(rVisitor!=null&&rVisitor.getState()!=0) {
			return "zs-login";
		}
		return "";
	}
	
	@RequestMapping("/visList.do")
	public String visList(Model model,@RequestParam(defaultValue="0") int limit,
    		@RequestParam(defaultValue="5") int offset) {
		List<Visitor> list = visitorService.selectList(limit,offset);
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
		model.addAttribute("visList", list);
		return "vislist";
		
	}
	
	public String updateState(@RequestParam(defaultValue="0") int state,Integer id) {
		visitorService.updateState(state, id);
		return "redirect:visList.do";
	}
	

}

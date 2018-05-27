package com.jcz.controller;

import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jcz.entity.Booth;
import com.jcz.service.impl.BoothServiceImpl;

@Controller
@RequestMapping("/booth")
public class BoothController {
	@Autowired
	private BoothServiceImpl boothService;

	@RequestMapping("listBooth/{page}")
	public String listBooth(@PathVariable("page") Integer page, HttpSession s, Map<String, Object> map) {
		int orgId = (int) s.getAttribute("id");
		map.put("listBooth", boothService.listBooth(orgId, (page - 1)*5));
		map.put("curPage", page);
		int row = boothService.countBooth((int) s.getAttribute("id"));
		int rows = (row % 5 == 0 ? row / 5 : row / 5 + 1);
		map.put("totalPage", rows);
		return "organiser/index";
	}

	@RequestMapping("/gotoEditBooth/{bid}/{page}")
	public String gotoEditBooth(@PathVariable("bid") Integer bid, @PathVariable("page") Integer page,
			HttpSession s,Map<String, Object> map) {
		s.setAttribute("pageBooth", page);
		s.setAttribute("booth", boothService.findById(bid));
		return "organiser/edit";
	}

	@RequestMapping(value="/editBooth",method=RequestMethod.POST)
	public String editBooth(Map<String, Object> map,HttpSession s,Booth b) {
		b.setId(((Booth)s.getAttribute("booth")).getId());
		boothService.update(b);
		int page=(int)s.getAttribute("pageBooth");
		map.put("listBooth", boothService.listBooth((int)s.getAttribute("id"),( page - 1)*5));
		map.put("curPage", page);
		int row = boothService.countBooth((int) s.getAttribute("id"));
		int rows = (row % 5 == 0 ? row / 5 : row / 5 + 1);
		map.put("totalPage", rows);
		return "organiser/index";
	}

	@RequestMapping("/resetBooth/{bid}/{page}")
	public String resetBooth(@PathVariable("bid") Integer bid, @PathVariable("page") Integer page,
			Map<String, Object> map, HttpSession s) {
		Booth b = new Booth(bid, 0, "暂无图片", "0 X 0", new BigDecimal(0));
		boothService.update(b);
		int orgId = (int) s.getAttribute("id");
		map.put("listBooth", boothService.listBooth(orgId, (page - 1)*5));
		map.put("curPage", page);
		int row = boothService.countBooth((int) s.getAttribute("id"));
		int rows = (row % 5 == 0 ? row / 5 : row / 5 + 1);
		map.put("totalPage", rows);
		return "organiser/index";
	}
}

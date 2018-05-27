package com.jcz.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.OrganiserDao;
import com.jcz.entity.Organiser;
import com.jcz.service.OrganiserService;
@Service("organiserService")
public class OrganiserServiceImpl implements OrganiserService{
	@Autowired
	private OrganiserDao organiserDao;
	@Autowired
	private BoothServiceImpl boothService;
	@Override
	public void registerOrganiser(Organiser o) {
		// TODO Auto-generated method stub
		
		organiserDao.registerOrganiser(o);
		Map<String,Object> m=new HashMap<String,Object>();
		m.put("account", o.getAccount());
		m.put("orgPwd", o.getOrgPwd());
		o=organiserDao.loginOrganiser(m);
		boothService.registerLotBooth(o.getBoothCount(), o.getId());
	}

	@Override
	public Organiser loginOrganiser(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return organiserDao.loginOrganiser(map);
	}

}

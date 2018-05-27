package com.jcz.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.AdminDao;
import com.jcz.entity.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	
	public Admin login(Admin admin) {
		return adminDao.login(admin);
	}
	
	public int update(Admin admin) {
		return adminDao.update(admin);
	}
	
	public int deleteByid(Integer id) {
		return adminDao.dalateById(id);
	}

}

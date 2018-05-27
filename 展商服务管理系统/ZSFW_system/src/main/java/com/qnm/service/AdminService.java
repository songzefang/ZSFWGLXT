package com.qnm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qnm.entity.Admin;
import com.qnm.mapper.AdminMapper;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}
	
	public int update(Admin admin) {
		return adminMapper.update(admin);
	}
	
	public int deleteByid(Integer id) {
		return adminMapper.dalateById(id);
	}

}

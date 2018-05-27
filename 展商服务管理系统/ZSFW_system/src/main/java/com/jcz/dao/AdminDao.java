package com.jcz.dao;

import com.jcz.entity.Admin;

public interface AdminDao {
	
	public Admin login(Admin admin);
	
	public int update(Admin admin);
	
	public int dalateById(int id);

}

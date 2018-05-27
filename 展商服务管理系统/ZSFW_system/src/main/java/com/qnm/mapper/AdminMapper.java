package com.qnm.mapper;

import com.qnm.entity.Admin;

public interface AdminMapper {
	
	public Admin login(Admin admin);
	
	public int update(Admin admin);
	
	public int dalateById(int id);

}

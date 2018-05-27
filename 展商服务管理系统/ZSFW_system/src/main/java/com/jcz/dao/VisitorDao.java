package com.jcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jcz.entity.Visitor;

public interface VisitorDao {
	
	public Visitor login(Visitor visitor);
	
	public List<Visitor> selectList(@Param("limit") int limit,@Param("offset") int offset);
	
	public int updateState(@Param("state")Integer state,@Param("id")Integer id);

}

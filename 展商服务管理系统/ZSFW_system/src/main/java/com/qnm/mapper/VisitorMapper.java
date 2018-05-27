package com.qnm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qnm.entity.Visitor;

public interface VisitorMapper {
	
	public Visitor login(Visitor visitor);
	
	public List<Visitor> selectList(@Param("limit") int limit,@Param("offset") int offset);
	
	public int updateState(@Param("state")Integer state,@Param("id")Integer id);

}

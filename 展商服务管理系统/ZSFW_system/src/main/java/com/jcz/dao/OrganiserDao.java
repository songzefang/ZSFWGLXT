package com.jcz.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jcz.entity.Organiser;
@Repository("organiserDao")
public interface OrganiserDao {
	void registerOrganiser(Organiser o);
	
	Organiser loginOrganiser(Map<String,Object> map);
	
	public List<Organiser> selectList(@Param("limit")int limit,@Param("offset")int offset);
	
	public int updateState(@Param("id")Integer id,@Param("state")Integer state);
	
	public int delete(Integer id);
	
}

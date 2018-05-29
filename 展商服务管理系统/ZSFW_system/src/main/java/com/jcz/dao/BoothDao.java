package com.jcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jcz.entity.Booth;

@Repository("boothDao")
public interface BoothDao {
	void registerBooth(Booth b);
	int countBooth(Integer orgId);
	int count();
	List<Booth> listBooth(@Param("orgId")Integer orgId,@Param("page")Integer page);
	void update(Booth b);
	Booth findById(int id);
	
	public List<Booth> selectList(@Param("orgId")Integer orgId,@Param("limit")Integer limit,@Param("offset")Integer offset);
	
	public int updateState(@Param("id")Integer id,@Param("state")Integer state);
}

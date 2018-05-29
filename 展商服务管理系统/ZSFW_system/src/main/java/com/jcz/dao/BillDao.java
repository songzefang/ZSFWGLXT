package com.jcz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jcz.entity.Bill;

public interface BillDao {
	
	public List<Bill> selectList(@Param("limit")int limit,@Param("offset")int offset);
	
	public int addBill(Bill bill);
	
	public int updateState(@Param("id")Integer id,@Param("state")Integer state);
	
	public List<Bill> selectListByExhId(@Param("exhId")int exhId,@Param("limit")int limit,@Param("offset")int offset);
	
	

}

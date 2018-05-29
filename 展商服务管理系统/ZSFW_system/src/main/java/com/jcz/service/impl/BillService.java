package com.jcz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.BillDao;
import com.jcz.entity.Bill;

@Service
public class BillService {
	
	@Autowired
	BillDao billDao;
	
	public List<Bill> selectList(Integer limit,Integer offset){
		return billDao.selectList(limit, offset);
	}
	
	public int addBill(Bill bill) {
		return billDao.addBill(bill);
	}
	
	public int updateState(Integer id,Integer state) {
		return billDao.updateState(id, state);
	}
	
	public List<Bill> selectListByExhId(Integer exhId,int limit,int offset){
		return billDao.selectListByExhId(exhId, limit, offset);
	}

}

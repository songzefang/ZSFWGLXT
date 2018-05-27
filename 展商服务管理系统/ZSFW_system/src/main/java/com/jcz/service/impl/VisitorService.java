package com.jcz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.VisitorDao;
import com.jcz.entity.Visitor;

@Service
public class VisitorService {
	
	@Autowired
	VisitorDao visitorDao;
	
	public Visitor login(Visitor visitor) {
		return visitorDao.login(visitor);
	}
	
	public List<Visitor> selectList(int limit,int offset){
		return visitorDao.selectList(limit, offset);
	}
	
	public int updateState(Integer state,Integer id) {
		return visitorDao.updateState(state, id);
	}

}

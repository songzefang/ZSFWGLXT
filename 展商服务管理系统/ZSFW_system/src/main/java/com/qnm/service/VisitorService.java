package com.qnm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qnm.entity.Visitor;
import com.qnm.mapper.VisitorMapper;

@Service
public class VisitorService {
	
	@Autowired
	VisitorMapper visitorMapper;
	
	public Visitor login(Visitor visitor) {
		return visitorMapper.login(visitor);
	}
	
	public List<Visitor> selectList(int limit,int offset){
		return visitorMapper.selectList(limit, offset);
	}
	
	public int updateState(Integer state,Integer id) {
		return visitorMapper.updateState(state, id);
	}

}

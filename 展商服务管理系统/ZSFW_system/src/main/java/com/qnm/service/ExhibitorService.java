package com.qnm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qnm.entity.Exhibitor;
import com.qnm.mapper.ExhibitorMapper;

@Service
public class ExhibitorService {
	
	@Autowired
	private ExhibitorMapper exhibitorMapper;
	
	public int addExhibitor(Exhibitor exhibitor) {
		return exhibitorMapper.addExhibitor(exhibitor);
	}
	
	public Exhibitor login(Exhibitor exhibitor) {
		return exhibitorMapper.login(exhibitor);
	}
	
	public int updateState(Integer id) {
		return exhibitorMapper.updateState(id);
	}
	
	public Exhibitor selectBasicInfo(Integer id) {
		return exhibitorMapper.selectBasicInfo(id);
	}
	
	public Exhibitor selectOtherInfo(Integer id) {
		return exhibitorMapper.selectOtherInfo(id);
	}
	
	public Exhibitor selectReceiveInfo(Integer id) {
		return exhibitorMapper.selectReceiveInfo(id);
	}
	
	public Exhibitor selectCertificatesInfo(Integer id) {
		return exhibitorMapper.selectCertificatesInfo(id);
	}
	
	public List<Exhibitor> selectList(int limit,int offset){
		return exhibitorMapper.selectList(limit,offset);
	}

}

package com.jcz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.ExhibitorDao;
import com.jcz.entity.Exhibitor;

@Service
public class ExhibitorService {
	
	@Autowired
	private ExhibitorDao exhibitorDao;
	
	public int addExhibitor(Exhibitor exhibitor) {
		return exhibitorDao.addExhibitor(exhibitor);
	}
	
	public Exhibitor login(Exhibitor exhibitor) {
		return exhibitorDao.login(exhibitor);
	}
	
	public int updateState(Integer id) {
		return exhibitorDao.updateState(id);
	}
	
	public Exhibitor selectBasicInfo(Integer id) {
		return exhibitorDao.selectBasicInfo(id);
	}
	
	public Exhibitor selectOtherInfo(Integer id) {
		return exhibitorDao.selectOtherInfo(id);
	}
	
	public Exhibitor selectReceiveInfo(Integer id) {
		return exhibitorDao.selectReceiveInfo(id);
	}
	
	public Exhibitor selectCertificatesInfo(Integer id) {
		return exhibitorDao.selectCertificatesInfo(id);
	}
	
	public List<Exhibitor> selectList(int limit,int offset){
		return exhibitorDao.selectList(limit,offset);
	}

}

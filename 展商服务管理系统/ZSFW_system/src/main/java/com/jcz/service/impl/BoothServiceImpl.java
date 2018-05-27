package com.jcz.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcz.dao.BoothDao;
import com.jcz.entity.Booth;
import com.jcz.service.BoothService;
@Service("boothService")
public class BoothServiceImpl implements BoothService{
	@Autowired
	private BoothDao boothDao;
	@Override
	public void registerBooth(Booth b) {
		// TODO Auto-generated method stub
		boothDao.registerBooth(b);
	}

	@Override
	public int countBooth(Integer orgId) {
		// TODO Auto-generated method stub
		return boothDao.countBooth(orgId);
	}

	@Override
	public void registerLotBooth(int count,int orgId) {
		// TODO Auto-generated method stub
		int countBooth=boothDao.count();
		for(int i=0;i<count;i++){
			String str="A";
			Booth b=new Booth();
			b.setOrgId(orgId);
			if(countBooth<9){
				countBooth++;
				str=("A0"+countBooth);
			}else{
				countBooth++;
				str="A"+countBooth;
			}
		
			b.setBoothCode(str);
			b.setOrgId(orgId);
			b.setPicture("暂无图片");	
			b.setStyle(1);
			b.setState(1);
			b.setSize("设置");
			b.setPrice(new BigDecimal(0));
			boothDao.registerBooth(b);
		}
	}

	@Override
	public List<Booth> listBooth(Integer orgId,Integer page) {
		// TODO Auto-generated method stub
		return boothDao.listBooth(orgId,page);
	}

	@Override
	public void update(Booth b) {
		// TODO Auto-generated method stub
		boothDao.update(b);
	}

	@Override
	public Booth findById(int id) {
		// TODO Auto-generated method stub
		return boothDao.findById(id);
	}

}

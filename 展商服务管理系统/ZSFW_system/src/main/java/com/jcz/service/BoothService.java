package com.jcz.service;

import java.util.List;

import com.jcz.entity.Booth;

public interface BoothService {
	void registerBooth(Booth b);
	void registerLotBooth(int count,int orgId);
	int countBooth(Integer orgId);
	List<Booth> listBooth(Integer orgId,Integer page);
	void update(Booth b);
	Booth findById(int id);
}

package com.qnm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qnm.entity.Exhibitor;

public interface ExhibitorMapper {
	
	public int addExhibitor(Exhibitor exhibitor);
	
	public Exhibitor login(Exhibitor exhibitor);
	
	public int updateState(Integer id);
	
	public Exhibitor selectBasicInfo(Integer id);
	
	public Exhibitor selectOtherInfo(Integer id);
	
	public Exhibitor selectReceiveInfo(Integer id);
	
	public Exhibitor selectCertificatesInfo(Integer id);
	
	public List<Exhibitor> selectList(@Param("limit")int limit,@Param("offset")int offset);

}

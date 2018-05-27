package com.jcz.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jcz.entity.Organiser;
@Repository("organiserDao")
public interface OrganiserDao {
	void registerOrganiser(Organiser o);
	Organiser loginOrganiser(Map<String,Object> map);
	
}

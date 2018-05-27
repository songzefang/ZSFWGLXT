package com.jcz.service;

import java.util.Map;

import com.jcz.entity.Organiser;

public interface OrganiserService {
	void registerOrganiser(Organiser o);
	Organiser loginOrganiser(Map<String,Object> map);
	
}	

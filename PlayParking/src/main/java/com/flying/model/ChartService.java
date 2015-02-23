package com.flying.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("chartservice")
public class ChartService implements ChartServiceInterface{

	@Autowired
	ChartDAOInterface dao;

	public AdminDTO selectByAdmin(String aid, String apwd) {
		return dao.selectByAdmin(aid, apwd);
	}
	
	

}

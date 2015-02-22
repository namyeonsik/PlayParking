package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("adminservice")
public class AdminService implements AdminServiceInterface{

	@Autowired
	AdminDAOInterface dao;

	public AdminDTO selectByAdmin(String aid, String apwd) {
		return dao.selectByAdmin(aid, apwd);
	}
	
	

}

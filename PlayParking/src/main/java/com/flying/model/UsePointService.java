package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("usepointservice")
public class UsePointService implements UsePointServiceInterface{

	@Autowired
	public UsePointDAOInterface dao;
	
	public List<UsePointDTO> selectBymid(String mid) {
		return dao.selectBymid(mid);
	}

	public int insertUsePoint(UsePointDTO point) {
		return dao.insertUsePoint(point);
	}

	public List<UsePointDTO> selectBytenmid(String mid) {
		return dao.selectBytenmid(mid);
	}

}

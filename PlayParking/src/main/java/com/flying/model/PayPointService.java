package com.flying.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("paypointservice")
public class PayPointService implements PayPointServiceInterface{

	@Autowired
	public PayPointDAOInterface dao;
	
	public PayPointDTO selectBymid(String mid) {
		return dao.selectBymid(mid);
	}

	public int insertPoint(PayPointDTO point) {
		return dao.insertPoint(point);
	}

}

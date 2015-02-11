package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("paypointdao")
public class PayPointDAO implements PayPointDAOInterface{

	@Autowired
	SqlSession session;
	
	public List<PayPointDTO> selectBymid(String mid) {
		return session.selectList("flying.paypoint.selectBymid", mid);
	}

	public int insertPoint(PayPointDTO point) {
		return session.insert("flying.paypoint.insertPoint", point);
	}

}

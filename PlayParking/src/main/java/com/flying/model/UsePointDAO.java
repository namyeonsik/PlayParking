package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("usepointdao")
public class UsePointDAO implements UsePointDAOInterface{

	@Autowired
	SqlSession session;
	
	public List<UsePointDTO> selectBymid(String mid) {
		return session.selectList("flying.usepoint.selectBymid", mid);
	}

	public int insertUsePoint(UsePointDTO point) {
		return session.insert("flying.usepoint.insertUsePoint", point);
	}

	public List<UsePointDTO> selectBytenmid(String mid) {
		return session.selectList("flying.usepoint.selectBytenmid", mid);
	}

}

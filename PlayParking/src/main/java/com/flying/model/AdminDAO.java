package com.flying.model;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("admindao")
public class AdminDAO implements AdminDAOInterface {

	@Autowired
	SqlSession session;

	public AdminDTO selectByAdmin(String aid, String apwd) {
		AdminDTO admin = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("aid", aid);
		map.put("apwd", apwd);
		admin = session.selectOne("flying.admin.selectByAdmin", map);
		return admin;
	}
}

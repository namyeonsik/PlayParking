package com.flying.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("membersdao")
public class MembersDAO implements MembersDAOInterface{

	@Autowired
	SqlSession session;
	
	public MembersDTO selectBymid(String mid) {
		return session.selectOne("flying.members.selectBymid", mid);
	}

	public int updateMembers(MembersDTO mem) {
		return session.update("flying.members.updateMembers", mem);
	}

	public int insertMembers(MembersDTO member) {
		return session.insert("flying.members.insertMembers",member);
	}
	
	public int deleteMembers(String mid){
		return session.delete("flying.members.deleteByMid", mid);
	}

	public MembersDTO selectByUser(String mid, String mpwd) {
		MembersDTO member = null;
		Map<String,String> map = 
				new HashMap<String,String>();
		map.put("mid", mid); 
		map.put("mpwd", mpwd);
		member = session.selectOne
				("flying.members.selectByUser",map);
		return member;
	}
	
	public List<CarDTO> selectByCbrand(String cbrand) {
		return session.selectList("flying.members.selectByCbrand", cbrand);
	}

	public int updatePoint(MembersDTO point) {
		return session.update("flying.members.updatePoint", point);
	}


}

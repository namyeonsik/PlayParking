package com.flying.model;

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
		return session.selectOne("flying.members.updateMembers", mem);
	}

	public int insertMembers(MembersDTO member) {
		return session.insert("flying.members.insertMembers",member);
	}

}

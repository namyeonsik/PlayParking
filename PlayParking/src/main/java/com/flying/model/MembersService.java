package com.flying.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("membersservice")
public class MembersService implements MembersServiceInterface{

	@Autowired
	public MembersDAOInterface dao;
	
	public MembersDTO selectBymid(String mid) {
		return dao.selectBymid(mid);
	}

	public int updateMembers(MembersDTO mem) {
		return dao.updateMembers(mem);
	}

	public int insertMembers(MembersDTO member) {
		return dao.insertMembers(member);
	}
}

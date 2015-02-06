package com.flying.model;

public interface MembersDAOInterface {
	public MembersDTO selectBymid(String mid);
	public int updateMembers(MembersDTO mem);
}

package com.flying.model;

public interface MembersServiceInterface {
	public MembersDTO selectBymid(String mid);
	public int updateMembers(MembersDTO mem);
}

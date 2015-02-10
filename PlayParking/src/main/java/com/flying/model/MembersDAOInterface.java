package com.flying.model;

public interface MembersDAOInterface {
	public MembersDTO selectBymid(String mid);
	public int updateMembers(MembersDTO mem);
	public int insertMembers(MembersDTO member);
	public MembersDTO selectByUser(String mid,String mpwd);
}

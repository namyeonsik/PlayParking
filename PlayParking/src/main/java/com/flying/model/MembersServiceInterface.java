package com.flying.model;

import java.util.List;


public interface MembersServiceInterface {
	public MembersDTO selectBymid(String mid);
	public int updateMembers(MembersDTO mem);
	public int updatePoint(MembersDTO point);
//	public int updatePoint2(int point, String mid);
	public int insertMembers(MembersDTO member);
	public MembersDTO selectByUser(String mid,String mpwd);
	public List<CarDTO> selectByCbrand(String cbrand);
	public int deleteMembers(String mid);
}

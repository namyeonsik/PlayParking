package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("parkingdao")
public class ParkingDAO implements ParkingDAOInterface{

	@Autowired
	SqlSession session;
	
	public List<ParkingDTO> selectByplocation(String plocation) {
		return session.selectList("flying.parking.selectByplocation", plocation);
	}

}

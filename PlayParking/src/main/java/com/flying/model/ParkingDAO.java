package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dao")
public class ParkingDAO implements ParkingDAOInterface{

	@Autowired
	SqlSession session;
	
	public List<ParkingDTO> selectByplocation(int plocation) {
		return session.selectList("flying.parking.selectByplocation", plocation);
	}

}

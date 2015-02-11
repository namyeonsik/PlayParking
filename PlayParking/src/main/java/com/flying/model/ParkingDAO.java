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
	
	//������������������
	public List<ParkingDTO> selectBymakchum_1(String plocation) {
		System.out.println("����?");
		return session.selectList("flying.parking.selectBymakchum_1", plocation);
	}
	
	//������������������
	public List<ParkingDTO> selectBymakchum_2(String plocation) {
		return session.selectList("flying.parking.selectBymakchum_2", plocation);
	}
		
	//������������������
	public List<ParkingDTO> selectBymakchum_3(String plocation) {
		return session.selectList("flying.parking.selectBymakchum_3", plocation);
	}

}

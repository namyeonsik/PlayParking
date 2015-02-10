package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("parkingservice")
public class ParkingService implements ParkingServiceInterface{

	@Autowired
	public ParkingDAOInterface dao;
	
	public List<ParkingDTO> selectByplocation(String plocation) {
		return dao.selectByplocation(plocation);
	}

	public ParkingDTO selectBypid(int pid) {
		return dao.selectBypid(pid);
	}

	public int updateParking(ParkingDTO parking) {
		return dao.updateParking(parking);
	}
}

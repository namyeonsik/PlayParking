package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("parkingservice")
public class ParkingService implements ParkingServiceInterface {

	@Autowired
	public ParkingDAOInterface dao;

	public List<ParkingDTO> selectByplocation(String plocation) {
		return dao.selectByplocation(plocation);
	}

	public List<ParkingDTO> selectBymakchum_1(String plocation) {
		return dao.selectBymakchum_1(plocation);
	}

	public List<ParkingDTO> selectBymakchum_2(String plocation) {
		return dao.selectBymakchum_2(plocation);
	}

	public List<ParkingDTO> selectBymakchum_3(String plocation) {
		return dao.selectBymakchum_3(plocation);
	}

	public ParkingDTO selectBypid(int pid) {
		return dao.selectBypid(pid);
	}

	public int updateParking(ParkingDTO parking) {
		return dao.updateParking(parking);
	}

	public List<ReservationDTO> seachReservationBypid(int pid) {
		// TODO Auto-generated method stub
		return dao.seachReservationBypid(pid);
	}

	public int updateParkingPcount(ParkingDTO parking) {
		// TODO Auto-generated method stub
		return dao.updateParkingPcount(parking);
	}

	public int checkCount(int pid) {
		// TODO Auto-generated method stub
		return dao.checkCount(pid);
	}

	public int checkAmount(int pid) {
		// TODO Auto-generated method stub
		return dao.checkAmount(pid);
	}

	public List<ParkingDTO> selectByAround(String plocation, int pid) {
		return dao.selectByAround(plocation, pid);
	}
}

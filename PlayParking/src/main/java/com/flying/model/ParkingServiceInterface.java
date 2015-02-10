package com.flying.model;

import java.util.List;

public interface ParkingServiceInterface {
	public List<ParkingDTO> selectByplocation(String plocation);
	public ParkingDTO selectBypid(int pid);
	public int updateParking(ParkingDTO parking);
}

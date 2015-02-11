package com.flying.model;

import java.util.List;

public interface ParkingServiceInterface {
	public List<ParkingDTO> selectByplocation(String plocation);

	public List<ParkingDTO> selectBymakchum_1(String plocation);
	public List<ParkingDTO> selectBymakchum_2(String plocation); 
	public List<ParkingDTO> selectBymakchum_3(String plocation);
	

	public ParkingDTO selectBypid(int pid);
	public int updateParking(ParkingDTO parking);

}

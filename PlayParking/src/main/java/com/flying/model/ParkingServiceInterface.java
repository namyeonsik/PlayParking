package com.flying.model;

import java.util.List;

public interface ParkingServiceInterface {
	public List<ParkingDTO> selectByplocation(String plocation);
}

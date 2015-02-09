package com.flying.model;

import java.util.List;

public interface ReservationDAOInterface {
	
	public List<ReservationDTO> selectBymid(String mid);
	public int insertReservation(ReservationDTO reserve);
}

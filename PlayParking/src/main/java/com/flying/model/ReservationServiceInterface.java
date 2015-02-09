package com.flying.model;

import java.util.List;

public interface ReservationServiceInterface {
	public List<ReservationDTO> selectBymid(String mid);
}

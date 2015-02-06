package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("reservationservice")
public class ReservationService implements ReservationServiceInterface{

	@Autowired
	public ReservationDAOInterface dao;

	public List<ReservationDTO> selectBymid(String mid) {
		return dao.selectBymid(mid);
	}
}

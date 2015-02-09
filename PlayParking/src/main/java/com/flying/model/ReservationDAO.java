package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;




@Component("reservedao")
public class ReservationDAO implements ReservationDAOInterface {

	@Autowired
	SqlSession session;
	
	
	
	
	public int insertReservation(ReservationDTO reserve) {
		// TODO Auto-generated method stub
		return session.insert("flying.reservation.insertReservation", reserve);
	}



	public List<ReservationDTO> selectBymid(String mid) {
		return session.selectList("flying.reservation.selectBymid", mid);
	}
	
	
	
	
	
}

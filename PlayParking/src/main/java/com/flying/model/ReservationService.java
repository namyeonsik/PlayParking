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

	public int insertReservation(ReservationDTO reserve) {
		// TODO Auto-generated method stub
		return dao.insertReservation(reserve);
	}

	public int checkCount(int pid) {
		// TODO Auto-generated method stub
		return dao.checkCount(pid);
	}

	public int checkAmount(int pid) {
		// TODO Auto-generated method stub
		return dao.checkAmount(pid);
	}

	

	

	public int updateParkingPcount(ParkingDTO parking) {
		// TODO Auto-generated method stub
		return dao.updateParkingPcount(parking);
	}

	public ParkingDTO selectBypid(int pid) {
		// TODO Auto-generated method stub
		return dao.selectBypid(pid);
	}

	public MembersDTO searchBymid(String mid) {//mid濡�mpoint瑜��뺤씤�섎젮 留뚮뱺寃�
		// TODO Auto-generated method stub
		return dao.searchBymid(mid);
	}

	public int updateMembersMpoint(MembersDTO members) {
		// TODO Auto-generated method stub
		return dao.updateMembersMpoint(members);
	}

	public int insertUsepoint(UsePointDTO usepoint) {
		// TODO Auto-generated method stub
		return dao.insertUsepoint(usepoint);
	}

	public ReservationDTO selectBymidone(String mid) {
		// TODO Auto-generated method stub
		return dao.selectBymidone(mid);
	}
}

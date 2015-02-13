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



	public int checkCount(int pid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.checkCount", pid);
	}



	public int checkAmount(int pid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.checkAmount", pid);
	}



	public ParkingDTO selectBypid(int pid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.selectBypid", pid);
	}



	public int updateParkingPcount(ParkingDTO parking) {
		// TODO Auto-generated method stub
		return session.update("flying.reservation.updateParkingPcount", parking);
	}



	public MembersDTO searchBymid(String mid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.searchBymid", mid);
	}



	public int updateMembersMpoint(MembersDTO members) {
		// TODO Auto-generated method stub
		return session.update("flying.reservation.updateMembersMpoint", members);
	}



	public int insertUsepoint(UsePointDTO usepoint) {
		// TODO Auto-generated method stub
		return session.insert("flying.reservation.insertUsepoint", usepoint);
	}



	public ReservationDTO selectBymidone(String mid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.selectBymidone", mid);
	}



	public ReservationDTO searchReservationByrid(int rid) {
		// TODO Auto-generated method stub
		return session.selectOne("flying.reservation.searchReservationByrid", rid);
	}



	public int updateReservationEndByrid(ReservationDTO reserve) {
		// TODO Auto-generated method stub
		return session.update("flying.reservation.updateReservationEndByrid", reserve);
	}
	
	
	
	
	
}

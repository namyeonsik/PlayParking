package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReservationService implements ReservationServiceInterface {

	@Autowired
	public ReservationDAOInterface dao;

	public int deleteReservation(int rid) {
		return dao.deleteReservation(rid);
	}

	public List<ReservationDTO> selectBymid(String mid) {
		return dao.selectBymid(mid);
	}

	public int insertReservation(ReservationDTO reserve) {
		return dao.insertReservation(reserve);
	}

	public MembersDTO searchBymid(String mid) {
		return dao.searchBymid(mid);
	}

	public int updateMembersMpoint(MembersDTO members) {
		return dao.updateMembersMpoint(members);
	}

	public int insertUsepoint(UsePointDTO usepoint) {
		return dao.insertUsepoint(usepoint);
	}

	public ReservationDTO selectBymidone(String mid) {
		return dao.selectBymidone(mid);
	}

	public ReservationDTO searchReservationByrid(int rid) {
		return dao.searchReservationByrid(rid);
	}

	public int updateReservationEndByrid(ReservationDTO reserve) {
		return dao.updateReservationEndByrid(reserve);
	}

	public ReservationDTO selectMaxrid(String mid) {
		return dao.selectMaxrid(mid);
	}

	public List<ReservationDTO> selectReservation2(String mid, int s, int l) {
		return dao.selectReservation2(mid, s, l);
	}

	public List<ReservationDTO> selectReservation3(String mid, int s, int l) {
		return dao.selectReservation3(mid, s, l);
	}

	public List<ReservationDTO> selectByaid11(String mid) {
		return dao.selectByaid11(mid);
	}

	public List<ReservationDTO> selectByaid12(String mid) {
		return dao.selectByaid12(mid);
	}

}
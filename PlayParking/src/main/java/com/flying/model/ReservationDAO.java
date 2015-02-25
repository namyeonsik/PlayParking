package com.flying.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("reservedao")
public class ReservationDAO implements ReservationDAOInterface {

	@Autowired
	SqlSession session;

	public int deleteReservation(int rid) {
		return session.delete("flying.reservation.deleteReservation", rid);
	}

	public int insertReservation(ReservationDTO reserve) {
		return session.insert("flying.reservation.insertReservation", reserve);
	}

	public List<ReservationDTO> selectBymid(String mid) {
		return session.selectList("flying.reservation.selectBymid", mid);
	}

	public MembersDTO searchBymid(String mid) {
		return session.selectOne("flying.reservation.searchBymid", mid);
	}

	public int updateMembersMpoint(MembersDTO members) {
		return session
				.update("flying.reservation.updateMembersMpoint", members);
	}

	public int insertUsepoint(UsePointDTO usepoint) {
		return session.insert("flying.reservation.insertUsepoint", usepoint);
	}

	public ReservationDTO selectBymidone(String mid) {
		return session.selectOne("flying.reservation.selectBymidone", mid);
	}

	public ReservationDTO searchReservationByrid(int rid) {
		return session.selectOne("flying.reservation.searchReservationByrid",
				rid);
	}

	public int updateReservationEndByrid(ReservationDTO reserve) {
		return session.update("flying.reservation.updateReservationEndByrid",
				reserve);
	}

	public ReservationDTO selectMaxrid(String mid) {
		return session.selectOne("flying.reservation.selectMaxrid", mid);
	}

	public List<ReservationDTO> selectReservation2(String mid, int s, int l) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mid", mid);
		map.put("s", s);
		map.put("l", l);
		return session.selectList("flying.reservation.selectReservation2", map);
	}

	public List<ReservationDTO> selectReservation3(String mid, int s, int l) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mid", mid);
		map.put("s", s);
		map.put("l", l);
		return session.selectList("flying.reservation.selectReservation3", map);
	}

	public List<ReservationDTO> selectByaid11(String mid) {
		return session.selectList("flying.reservation.selectByaid11", mid);
	}

	public List<ReservationDTO> selectByaid12(String mid) {
		return session.selectList("flying.reservation.selectByaid12", mid);
	}

}
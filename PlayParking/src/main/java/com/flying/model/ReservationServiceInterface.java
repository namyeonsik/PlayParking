package com.flying.model;

import java.util.List;

public interface ReservationServiceInterface {
	public int deleteReservation(int rid);

	public List<ReservationDTO> selectByaid11(String mid);

	public List<ReservationDTO> selectByaid12(String mid);
	
	public List<ReservationDTO> selectReservation3(String mid, int s, int l);

	public List<ReservationDTO> selectReservation2(String mid, int s, int l);

	public ReservationDTO selectMaxrid(String mid);

	public List<ReservationDTO> selectBymid(String mid);

	public ReservationDTO selectBymidone(String mid);

	public int insertReservation(ReservationDTO reserve);

	public MembersDTO searchBymid(String mid);

	public int updateMembersMpoint(MembersDTO members);

	public int insertUsepoint(UsePointDTO usepoint);

	public ReservationDTO searchReservationByrid(int rid);

	public int updateReservationEndByrid(ReservationDTO reserve);
}
package com.flying.model;

import java.util.List;

public interface ReservationDAOInterface {
   
   public List<ReservationDTO> selectByaid11(String mid);
   public List<ReservationDTO> selectByaid(String mid, int s, int l);
   public List<ReservationDTO> selectReservation2(String mid, int s, int l);
   public List<ReservationDTO> selectReservation(String mid);
   public ReservationDTO selectMaxrid(String mid);
   public List<ReservationDTO> selectBymid(String mid);
   public ReservationDTO selectBymidone(String mid);
   public int insertReservation(ReservationDTO reserve);
   public int checkCount(int pid);
   public int checkAmount(int pid);
   public ParkingDTO selectBypid(int pid);
   public int updateParkingPcount(ParkingDTO parking);
   public MembersDTO searchBymid(String mid);
   public int updateMembersMpoint(MembersDTO members);
   public int insertUsepoint(UsePointDTO usepoint);
   
   public ReservationDTO searchReservationByrid(int rid);
   
   public int updateReservationEndByrid(ReservationDTO reserve);
}
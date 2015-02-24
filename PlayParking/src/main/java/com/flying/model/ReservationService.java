package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component 
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

   public ReservationDTO searchReservationByrid(int rid) {
      // TODO Auto-generated method stub
      return dao.searchReservationByrid(rid);
   }


   public int updateReservationEndByrid(ReservationDTO reserve) {
      // TODO Auto-generated method stub
      return dao.updateReservationEndByrid(reserve);
   }
   public ReservationDTO selectMaxrid(String mid) {
      // TODO Auto-generated method stub
      return dao.selectMaxrid(mid);
   }

   public List<ReservationDTO> selectReservation(String mid) {
      // TODO Auto-generated method stub
      return dao.selectReservation(mid);

   }
   
   public List<ReservationDTO> selectReservation2(String mid, int s, int l) {
      // TODO Auto-generated method stub
      return dao.selectReservation2(mid, s, l);

   }
   
   public List<ReservationDTO> selectReservation3(String mid, int s, int l) {
	      // TODO Auto-generated method stub
	      return dao.selectReservation3(mid, s, l);

	   }

   public List<ReservationDTO> selectByaid11(String mid) {
      // TODO Auto-generated method stub
      return dao.selectByaid11(mid);
   }

   public List<ReservationDTO> selectByaid12(String mid) {
	      // TODO Auto-generated method stub
	      return dao.selectByaid12(mid);
	   }
   
   public List<ReservationDTO> selectByaid(String mid, int s, int l) {
      // TODO Auto-generated method stub
      return dao.selectByaid(mid, s, l);
   }
   
   /*public List<ReservationDTO> selectByMonth(int pid, String month) {
	   return dao.selectByMonth(pid, month);
   }
   public List<ReservationDTO> selectReserve(int pid){
	   return dao.selectReserve(pid);
   }*/
}
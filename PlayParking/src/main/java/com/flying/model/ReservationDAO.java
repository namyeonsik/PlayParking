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
   
   
   
   
   

   public ReservationDTO selectMaxrid(String mid) {
      // TODO Auto-generated method stub
      return session.selectOne("flying.reservation.selectMaxrid", mid);
   }


   public List<ReservationDTO> selectReservation2(String mid, int s, int l) {
      Map<String,Object> map = new HashMap<String,Object>();         
      map.put("mid", mid);
      map.put("s", s); 
      map.put("l", l); 
      return session.selectList("flying.reservation.selectReservation2", map);
   }

   public List<ReservationDTO> selectReservation(String mid) {
      // TODO Auto-generated method stub
      return session.selectList("flying.reservation.selectReservation", mid);
   }

   public List<ReservationDTO> selectByaid(String mid, int s, int l) {
      Map<String,Object> map = new HashMap<String,Object>();         
      map.put("mid", mid);
      map.put("s", s); 
      map.put("l", l); 
      return session.selectList("flying.reservation.selectByaid", map);
   }


   public List<ReservationDTO> selectByaid11(String mid) {
      // TODO Auto-generated method stub
      return session.selectList("flying.reservation.selectByaid11", mid);
   }

/*	public List<ReservationDTO> selectByMonth(int pid, String month) {
		List<ReservationDTO> reservelist = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pid", pid);
		map.put("month", month);
		reservelist = session.selectList("flying.reservation.selectByMonth", map);
		return reservelist;
	}*/
   
   /*public HashMap<String, Object> selectReserve(int pid){
	   HashMap<String, Object> monthlylist = null;
	   monthlylist.put("sumrtime", sumrtime);
	   List<ReservationDTO> reservelist = null;
	   reservelist = 
	    session.selectList("flying.reservation.selectReserve", pid);
	   return reservelist;
   }*/

}
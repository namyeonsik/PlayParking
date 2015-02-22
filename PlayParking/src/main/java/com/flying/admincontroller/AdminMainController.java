package com.flying.admincontroller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.MembersDTO;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;

@Controller
public class AdminMainController {

   @Autowired
   ParkingServiceInterface service;
   
   @Autowired
   ReservationServiceInterface rservice;

   String thisMonth=null;
   
   
   @RequestMapping(value="/adminmain.do", method=RequestMethod.GET)
   public ModelAndView adminMain(HttpServletRequest request,
                                   HttpSession session) {
      ModelAndView mv = new ModelAndView();
      System.out.println("여기가 main 시작점");
      session = request.getSession();
      AdminDTO admincheck = (AdminDTO) session.getAttribute("admincheck");
      
   
      
      // ParkingDTO admincheck =
      // (ParkingDTO)session.getAttribute("admincheck");
      System.out.println("pid:" + admincheck);

      System.out.println(admincheck.getPid());
      ParkingDTO parking = service.selectBypid(admincheck.getPid());
      mv.addObject("parking", parking);//parking
      List<ParkingDTO> aroundpark = 
            service.selectByAround(parking.getPlocation(), admincheck.getPid());
      mv.addObject("aroundpark", aroundpark);
      int sumfare=0;
      int avg;
      for(ParkingDTO p : aroundpark){
         sumfare += p.getPfare();
      }
      avg=sumfare/aroundpark.size();
      mv.addObject("avg", avg);
      System.out.println(parking.getPcount());
      int resultcount = parking.getPamount() - parking.getPcount();
      int todaycount=0;
      List<ReservationDTO> reservelist = service.seachReservationBypid(admincheck.getPid());
            //.seachReservationBypid(admincheck.getPid());
      
      
      Date d1 = new Date();
      System.out.println("현재의시간="+d1.getHours()+"분="+d1.getMinutes());
      String test1 = toString().format("", d1.getHours())+toString().format("", d1.getMinutes());
      
      SimpleDateFormat sf = new SimpleDateFormat("HHmm");
      String test2 = sf.format(d1);
      System.out.println(test2);
      
      
      
      int i = reservelist.size(); 
      List<ReservationDTO> reservelist2 = new ArrayList<ReservationDTO>();
      List<ReservationDTO> reservelist3 = new ArrayList<ReservationDTO>();
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      SimpleDateFormat formatForchart = new SimpleDateFormat("yyyy-MM");
      //SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
      //Date d2 = sf.parse(d1);
      System.out.println("전체예약건수="+i);
      String today = format.format(d1);
      String reserveday=null;
     
     thisMonth = formatForchart.format(d1);
      System.out.println("이번년도와 달은 = "+thisMonth);
      
  
      
      
      
      for (int a = 0; a < i; a++) {

         reserveday=format.format(reservelist.get(a).getRstart());
      //   System.out.println(reserveday);
         if(today.equals(reserveday)){
            reservelist2.add(reservelist.get(a));
         //System.out.println("reserveday="+reserveday);
         }
         
      }
     
      String s1="900";
      String s2="930";
      
      for(int a=0;a<reservelist2.size();a++){
         String temps = reservelist2.get(a).getRstarttimeback();
         temps=temps.trim();
         if(temps.equals(s1)){
            temps = "0"+temps;
            //System.out.println(temps);
            reservelist2.get(a).setRstarttimeback(temps);
            
         }
         else if(temps.equals(s2)){
            temps = "0"+temps;
            //System.out.println(temps);
            reservelist2.get(a).setRstarttimeback(temps);
            
         }
      
         
      }
      
      todaycount = reservelist2.size();
      /*for(int a = 0;a<todaycount;a++){
         
         System.out.println(reservelist2.get(a));
      }*/
      /*String tmp;
      int cnt1=0;
      for(int a = 0; a<todaycount;a++){
         reservelist3.add(reservelist2.get(a));
      tmp =    reservelist3.get(a).getRstarttime();
         cnt1 = Integer.parseInt(tmp);
         cnt1=cnt1+30;
      
         reservelist3.get(a).setRstarttime(toString().valueOf(cnt1));
      }*/
      /*for (int a = 0; a < i; a++) {

         if (d1.equals(reservelist.get(a).getRstart()) )
            // reservelist2=(List<ReservationDTO>) reservelist.get(a);
            System.out.println(reservelist.get(a));
      }*/
      String end=null;
     
      int todaypoint=0;
      
      for(int c=0; c<reservelist2.size();c++){
         
      
      todaypoint=todaypoint+(rservice.searchReservationByrid(reservelist2.get(c).getRid()).getRtime()*
         service.selectBypid(reservelist2.get(c).getPid()).getPfare());
      }
      
      
   //   mv.addObject("end", end);
      mv.addObject("todaycount", todaycount);
      mv.addObject("reservelist", reservelist2);
      mv.addObject("todaypoint",todaypoint);
   //   mv.addObject("plus30", reservelist3);
      System.out.println("오늘의 예약갯수="+todaycount);

      mv.setViewName("admin/admin_main");
      return mv;
   }
   
   
   @RequestMapping(value="reservationupdate.do", method=RequestMethod.GET)
   public ModelAndView updateGet(int rid){
      
      
            /*
            HttpSession session = request.getSession();
            AdminDTO admin = (AdminDTO)session.getAttribute("admincheck");*/
      //ReservationDTO reserve4 = rservice.
      
      ModelAndView mv = new ModelAndView();
   System.out.println("rid=!="+rid);
      ReservationDTO reserve1 = rservice.searchReservationByrid(rid);
      Date d = new Date();
      SimpleDateFormat sf = new SimpleDateFormat("HHmm");
      //String test2 = sf.format(d);
      System.out.println("*******"+d.getHours());
      String temp1=null;
      String temp2=null;
     
      temp1 = temp1.valueOf(d.getHours());
      temp2 = temp2.valueOf(d.getMinutes());
      //System.out.println("temp2"+temp2);//
      String tempresult = temp1+temp2;//
      
      //int tempint1 = reserve1.getRtime();
      //System.out.println("reserve1.getRstarttime()===="+reserve1.getRstarttime());
      String tempstring1 = reserve1.getRstarttime();//db
      int starttime1 = Integer.parseInt(tempstring1);//db
      //System.out.println(tempresult);
      //System.out.println(starttime1);
      //System.out.println(tempresult.length()); // 
      if(tempresult.length()==3){
         String faketemp3 = tempresult.substring(0, 1);
         String faketemp4 = tempresult.substring(1, 3);
         tempresult="0"+faketemp3+faketemp4;
         
         
      }else if(tempresult.length()==2){
         String faketemp3 = tempresult.substring(0,1);
         String faketemp4 = tempresult.substring(1, 2);
         tempresult="0"+faketemp3+"0"+faketemp4;
         
      }
      //System.out.println("tempresult"+tempresult);
      //starttime1 = 
      int temp3 = Integer.parseInt(tempresult.substring(0, 2));
      int temp4 = Integer.parseInt(tempresult.substring(2, 4));
      int temp5 = Integer.parseInt(reserve1.getRstarttime().substring(0, 2));
      int temp6 = Integer.parseInt(reserve1.getRstarttime().substring(2, 4));
      int rstarttime = Integer.parseInt(tempstring1);
      int endtime = Integer.parseInt(tempresult);//
   temp5 = temp5+reserve1.getRtime();
      int cnth = 0;//cnth
      int cntm = 0;//cntm
      int cal =0;
      if(endtime>rstarttime){
         cnth = temp3-temp5;
         cntm = temp4-temp6;
         
      }
      //System.out.println("cnth="+cnth);
      /*
      System.out.println("temp7="+rstarttime);
      System.out.println(temp3);
      */
      if(cntm>0){
      cal = ((cnth+1)*service.selectBypid(reserve1.getPid()).getPlatefare());
      }
      else{
         cal = (cnth*service.selectBypid(reserve1.getPid()).getPlatefare());
         
      }
      mv.addObject("naga", cal);
      mv.addObject("rid",rid);
     // System.out.println("resrvationupdate.do");
      mv.setViewName("admin/chulcha");
      return mv;
   }
   
   @RequestMapping(value="reservationupdate1.do", method=RequestMethod.POST)
   public ModelAndView updatePost(int rid,int naga){
      ModelAndView mv = new ModelAndView();
      
      
      
      
      //System.out.println("naga"+naga);
      System.out.println("rid==========="+rid);
      ReservationDTO reserve = rservice.searchReservationByrid(rid);
  
         
        /*SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
            Date d = sf.parse(date);
      */
   reserve.setRextrafare(naga);
   
   
   ParkingDTO parking =  service.selectBypid(rservice.searchReservationByrid(rid).getPid());
   int countTemp = parking.getPcount()+1;
    parking.setPcount(countTemp);
    int ret = rservice.updateReservationEndByrid(reserve);
    int ret2 = service.updateParkingPcount(parking);
   System.out.println("업데이트한 reserve==="+reserve);
      System.out.println(ret+"건의 End 업데이트 성공");
      System.out.println(ret2+"건의 pcount없데이트 성공");
      mv.setViewName("redirect:/adminmain.do");
      return mv;
      
      
   }
}
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

	@RequestMapping(value="/adminmain.do", method=RequestMethod.GET)
	public ModelAndView adminMain(HttpServletRequest request,
		                          	HttpSession session) {
		ModelAndView mv = new ModelAndView();
		System.out.println("여기는 메인");
		session = request.getSession();
		AdminDTO admincheck = (AdminDTO) session.getAttribute("admincheck");
		
	
		
		// ParkingDTO admincheck =
		// (ParkingDTO)session.getAttribute("admincheck");
		System.out.println("정보수정pid:" + admincheck);

		System.out.println(admincheck.getPid());
		ParkingDTO parking = service.selectBypid(admincheck.getPid());
		mv.addObject("parking", parking);//parking정보들
		System.out.println(parking.getPcount());
		int resultcount = parking.getPamount() - parking.getPcount();
		int todaycount=0;
		List<ReservationDTO> reservelist = service.seachReservationBypid(admincheck.getPid());
				//.seachReservationBypid(admincheck.getPid());
		
		
		//시간형변환 부분 시작!
		Date d1 = new Date();
		System.out.println("시간을확인해보자"+d1.getHours()+"분은"+d1.getMinutes());
		String test1 = toString().format("", d1.getHours())+toString().format("", d1.getMinutes());
		//출차시간을 위해 형변환을 하는 부분
		SimpleDateFormat sf = new SimpleDateFormat("HHmm");
		String test2 = sf.format(d1);
		System.out.println(test2);
		
		
		// 오늘날짜와 예약 날짜를 비교하는 부분
		int i = reservelist.size(); //  우선 전체 예약정보의 크기를 구해온다.
		List<ReservationDTO> reservelist2 = new ArrayList<ReservationDTO>();
		List<ReservationDTO> reservelist3 = new ArrayList<ReservationDTO>();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		//SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		//Date d2 = sf.parse(d1);
		String today = format.format(d1);
		String reserveday=null;
		System.out.println("오늘날짜는"+today);
		System.out.println("예약날짜는"+reserveday);
		
		
		//시간형변환 부분 시작끝!
		
		/*if(today.equals(reserveday)){
			
			System.out.println("날짜가 같아임마");
		}else{
			
			System.out.println("니가 틀린거야임마");
		}*/
		
		for (int a = 0; a < i; a++) {

			reserveday=format.format(reservelist.get(a).getRstart());
		//	System.out.println(reserveday);
			if(today.equals(reserveday)){
				reservelist2.add(reservelist.get(a));
			
			}
			
		}
		//rstarttimeback 가 900이거나 930일때 처리방법
		String s1="900";
		String s2="930";
		for(int a=0;a<i;a++){
			String temps = reservelist2.get(a).getRstarttimeback();
			temps=temps.trim();
			if(temps.equals(s1)){
				temps = "0"+temps;
				System.out.println(temps);
				reservelist2.get(a).setRstarttimeback(temps);
				
			}
			else if(temps.equals(s2)){
				temps = "0"+temps;
				System.out.println(temps);
				reservelist2.get(a).setRstarttimeback(temps);
				
			}
		
			
		}
		
		todaycount = reservelist2.size();
		for(int a = 0;a<todaycount;a++){
			
			System.out.println(reservelist2.get(a));
		}
		/*String tmp;
		int cnt1=0;
		for(int a = 0; a<todaycount;a++){
			reservelist3.add(reservelist2.get(a));
		tmp = 	reservelist3.get(a).getRstarttime();
			cnt1 = Integer.parseInt(tmp);
			cnt1=cnt1+30;
		
			reservelist3.get(a).setRstarttime(toString().valueOf(cnt1));
		}*/
		/*for (int a = 0; a < i; a++) {

			if (d1.equals(reservelist.get(a).getRstart()) )
				// reservelist2=(List<ReservationDTO>) reservelist.get(a);
				System.out.println(reservelist.get(a));
		}*/

		mv.addObject("todaycount", todaycount);
		mv.addObject("reservelist", reservelist2);
	//	mv.addObject("plus30", reservelist3);
		System.out.println(todaycount);

		mv.setViewName("admin/admin_main");
		return mv;
	}
	
	
	@RequestMapping(value="reservationupdate.do", method=RequestMethod.GET)
	public ModelAndView update(String mid){
		ModelAndView mv = new ModelAndView();
	//	ReservationDTO reserve1 = rservice.s
		
		return mv;
	}
	
	
	
}

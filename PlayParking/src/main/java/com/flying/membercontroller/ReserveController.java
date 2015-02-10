package com.flying.membercontroller;

import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.ParkingDTO;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;
import com.flying.model.UsePointDTO;

@Controller
public class ReserveController {

	@Autowired
	ReservationServiceInterface service;

	@RequestMapping(value = "/reserve.do", method = RequestMethod.GET)
	public String test() {
		System.out.println("get방식");
		return "members/reserve";
	}

	@RequestMapping(value = "/reserve1.do", method = RequestMethod.POST)
	public ModelAndView test2() {
		// 가는시간을 조회해서 data를 저장
		// 원래는 pid값을 받아와야한다.
		int pid = 178;
		ModelAndView mv = new ModelAndView();
		int pcountcheck = service.checkCount(pid);
		int pamountcheck = service.checkAmount(pid);

		if (pcountcheck > (pamountcheck * 0.1)) {

			String check = "예약가능";
			mv.addObject("check", check);

		} else {
			String check = "예약불가능";
			mv.addObject("check", check);

		}

		mv.setViewName("members/possibletime");

		System.out.println("post방식");
		return mv;
	}

	@RequestMapping(value = "/reserve2.do", method = RequestMethod.POST)
	public ModelAndView test3(String possibleTime,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		System.out.println(memcheck);
		
		// 가는시간을 조회해서 data를 저장
		ModelAndView mv = new ModelAndView();
		System.out.println("p"+possibleTime);
		int rstarttime = Integer.parseInt(possibleTime);

		int limit = 23;// 오전9시에 예약하면 최대 14시간까지 가능
		int num = rstarttime / 100; // 주차예약가능시간 값을 가질 num
		int temp = limit-num;
		int[] numArray = new int[temp];
		
		for (int a = 0; a <temp; a++) {

			numArray[a] = a+1;
					
		}
		/*for(int i = 0; i<temp;i++){
			
			if(numArray[i]==0){
				numArray[i]=(Integer) null;
			}
			
		}*/
		mv.addObject("numArray", numArray);

		mv.setViewName("members/selecttime");

		System.out.println("post방식");
		return mv;
	}
	ReservationDTO reserve  = new ReservationDTO();
	MembersDTO members = new MembersDTO();
	ParkingDTO parking = new ParkingDTO();
	UsePointDTO usepoint = new UsePointDTO();
	int temp=0;//pid값을 받아오는변수 temp
	int parkingMpoint=0;
	int minusMpoint=0;
	int resultMpoint=0;
	@RequestMapping(value="/insert.do", method=RequestMethod.POST)
	public ModelAndView insert(String date, String possibleTime, String selectTime, HttpServletRequest request){
		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		
		ModelAndView mv = new ModelAndView();
		System.out.println(memcheck);
		 possibleTime = request.getParameter("possibleTime");
		System.out.println("possibleTime:" + possibleTime);
		System.out.println("아이디는="+memcheck.getMid()); //여기서 에러가난다.
		
		try {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = sf.parse(date);
			System.out.println(d+"일"+possibleTime+"시"+selectTime+"시간");
			
			String mid = memcheck.getMid();
			int pid = 178;
			System.out.println(possibleTime);
			
			// ReservationDTO에 값을 입력해주는 부분
			reserve.setMid(mid);  // request에서 받아와야한다.
			reserve.setPid(pid);	//request에서 받아와야한다.
			reserve.setRstart(d);
			reserve.setRend(null);
			reserve.setRstarttime(possibleTime);  //시작 날짜 정보를 변형해서 줘야한다.
			reserve.setRtime(Integer.parseInt(selectTime));
			reserve.setRextrafare(0);
			
			
			//pid값을 받아와서 넣어주는 부분
			temp = reserve.getPid();
			parking = service.selectBypid(temp);
			parkingMpoint = parking.getPfare(); //주차장의 요금 정보를 받아온다.
			System.out.println("주차장 기본요금= "+parkingMpoint);
			
			//members의 아이디값을 받아서 Mpoint값을 받아오는 부분
			members = service.searchBymid(mid);
			System.out.println(members.getMpoint());
			
			
			int mpoint = members.getMpoint();//members의 mpoint값을 가진아이
			minusMpoint = parkingMpoint*Integer.parseInt(selectTime);
			
			resultMpoint = members.getMpoint()-minusMpoint;
			mv.addObject("mpoint", mpoint); // submit.jsp에 값을 넣어준다.
			mv.addObject("minusMpoint",minusMpoint);
			
			
			
			//rid는 db에서 sequence로 값을 줘야한다.
			//reserve.setRid(1); //Test용으로 우선 1을 줘본다 
		/*int ret = service.insertReservation(reserve);
			System.out.println(ret+"건 입력 받았습니다.");*/
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//mv.setViewName("redirect:members/member_main");
//		return mv;
		mv.setViewName("members/submit");
		return mv;
		
	}
	
	@RequestMapping(value="/insert1.do", method=RequestMethod.POST)
	public String insertcom(){
		int ret = service.insertReservation(reserve);
		
		int countTemp = parking.getPcount()-1;
		parking.setPcount(countTemp);
		int ret2 = service.updateParkingPcount(parking);
		members.setMpoint(resultMpoint);
		int ret3 = service.updateMembersMpoint(members);
		
		usepoint.setMid(members.getMid());
		usepoint.setPid(parking.getPid());
		usepoint.setUsepoint(minusMpoint);
		int ret4 =service.insertUsepoint(usepoint);
		
		System.out.println(ret+"건 입력 받았습니다.");
		System.out.println(ret2+"건의 pcount수정했습니다.");
		System.out.println(ret3+"건의 mpoint수정했습니다.");
		System.out.println(ret4+"건의 usepoint수정했습니다.");
		return "members/confirm";
	}
	
}

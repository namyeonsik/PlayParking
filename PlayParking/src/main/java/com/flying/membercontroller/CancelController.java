package com.flying.membercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
import com.flying.model.ReservationServiceInterface;

@Controller
public class CancelController {

	@Autowired
	ReservationServiceInterface service;
	
	@Autowired
	ParkingServiceInterface pservice;
	
	@Autowired
	MembersServiceInterface mservice;
	MembersDTO members = new MembersDTO();
	@RequestMapping(value = "/cancel.do", method = RequestMethod.GET)
	public ModelAndView cancelGet(int rid, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("rid", rid);
		System.out.println("으아아아아ㅏrid=" + rid);
		
		HttpSession session = request.getSession();
	      MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
	      System.out.println("포인트충전mid:"+memcheck);
 
	      members = mservice.selectBymid(memcheck.getMid());

	   
			mv.addObject("mem", members);
			session.setAttribute("memcheck", members);
			
	      System.out.println("확인:"+members);
	      mv.addObject("mem", members);
	      session.setAttribute("memcheck", members);
		
		mv.setViewName("members/myparking/cancel");
		return mv;
	}

	@RequestMapping(value = "/cancel.do", method = RequestMethod.POST)
	public ModelAndView cancelPost(int rid, HttpSession session,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println("rid?" + rid);
		session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		
		ParkingDTO parking = pservice.selectBypid(service.searchReservationByrid(rid).getPid());
		int countTemp = parking.getPcount() + 1;
		parking.setPcount(countTemp);
		int ret2 = pservice.updateParkingPcount(parking);
		System.out.println(ret2+"pcount수정");
		
		int rpoint = service.searchReservationByrid(rid).getRpoint();
		int mpoint = memcheck.getMpoint()+rpoint;
		System.out.println("현재포인트는?"+memcheck.getMpoint());
//		memcheck.setMpoint(mpoint);
//		int ret3 = mservice.updatePoint(point);
//		System.out.println(ret3 + "건 포인트 반환..." + rpoint);
		
		members.setMpoint(mpoint);
        int ret3 = service.updateMembersMpoint(members);
        System.out.println(ret3+"건 포인트반환");
        
		int ret = service.deleteReservation(rid);
		System.out.println(ret + "건 예약취소..");
				
		mv.setViewName("members/myparking/deletesuccess");
		return mv;
	}
}

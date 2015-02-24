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
		System.out.println("���ƾƾƾƤ�rid=" + rid);
		
		HttpSession session = request.getSession();
	      MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
	      System.out.println("����Ʈ����mid:"+memcheck);
 
	      members = mservice.selectBymid(memcheck.getMid());

	   
			mv.addObject("mem", members);
			session.setAttribute("memcheck", members);
			
	      System.out.println("Ȯ��:"+members);
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
		System.out.println(ret2+"pcount����");
		
		int rpoint = service.searchReservationByrid(rid).getRpoint();
		int mpoint = memcheck.getMpoint()+rpoint;
		System.out.println("��������Ʈ��?"+memcheck.getMpoint());
//		memcheck.setMpoint(mpoint);
//		int ret3 = mservice.updatePoint(point);
//		System.out.println(ret3 + "�� ����Ʈ ��ȯ..." + rpoint);
		
		members.setMpoint(mpoint);
        int ret3 = service.updateMembersMpoint(members);
        System.out.println(ret3+"�� ����Ʈ��ȯ");
        
		int ret = service.deleteReservation(rid);
		System.out.println(ret + "�� �������..");
				
		mv.setViewName("members/myparking/deletesuccess");
		return mv;
	}
}

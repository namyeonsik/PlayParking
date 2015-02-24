package com.flying.membercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.ReservationServiceInterface;

@Controller
public class CancelController {
	
	@Autowired
	ReservationServiceInterface service;
	
	@RequestMapping(value="/cancel.do", method=RequestMethod.GET)
	public ModelAndView cancelGet(int rid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("rid", rid);
		System.out.println("으아아아아ㅏrid="+rid);
		mv.setViewName("members/myparking/cancel");
		return mv;
	}
	
	@RequestMapping(value="/cancel.do", method=RequestMethod.POST)
	public ModelAndView cancelPost(int rid, HttpSession session, HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		System.out.println("rid?"+rid);
		int ret=service.deleteReservation(rid);
		System.out.println(ret+"건 예약취소..");
		mv.setViewName("members/myparking/deletesuccess");
		return mv;
	}
}

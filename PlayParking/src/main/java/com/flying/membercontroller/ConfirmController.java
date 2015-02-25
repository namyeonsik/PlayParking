package com.flying.membercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;

@Controller
public class ConfirmController {

	@Autowired
	ReservationServiceInterface service;
	
	@Autowired
	ParkingServiceInterface pservice;

	@RequestMapping("/confirm.do")
	public ModelAndView test(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("memcheck") == null) {
			mv.setViewName("members/member_login");
			return mv;
		} else {
			session = request.getSession();
			MembersDTO memcheck = (MembersDTO) session.getAttribute("memcheck");
			String mid = memcheck.getMid();
			System.out.println("예약확인mid:" + mid);

			ReservationDTO reservation = service.selectMaxrid(mid);
			ParkingDTO pname = pservice.selectBypid(reservation.getPid());

			mv.addObject("pname", pname);
			mv.addObject("reservation", reservation);

			mv.setViewName("members/confirm");
			return mv;
		}

	}
}

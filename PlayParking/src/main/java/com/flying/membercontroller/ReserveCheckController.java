package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;
@Controller
public class ReserveCheckController {

	@Autowired
	ReservationServiceInterface service;
	
	@RequestMapping("/reservecheck.do")
	public ModelAndView getMaplist(HttpServletRequest request,
			                                  HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("memcheck") == null) {
			mv.setViewName("members/member_login");
			return mv;
		} else {
			session = request.getSession();
			String mid = (String) session.getAttribute("mid");
			System.out.println("예약확인mid:" + mid);

			List<ReservationDTO> reservationlist = service.selectBymid(mid);

			mv.addObject("reservationlist", reservationlist);
			mv.setViewName("/members/myparking/reservecheck");
			return mv;
		}
	}	
}

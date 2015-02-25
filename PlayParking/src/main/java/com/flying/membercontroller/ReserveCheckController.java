package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
			HttpSession session, String pageno) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("memcheck") == null) {
			mv.setViewName("members/notmember");
			return mv;
		} else {
			session = request.getSession();
			MembersDTO memcheck = (MembersDTO) session.getAttribute("memcheck");
			String mid = memcheck.getMid();
			System.out.println("예약확인mid:" + mid);
			System.out.println(pageno);
			if (pageno == null)
				pageno = "1";
			int last_num = Integer.parseInt(pageno) * 5;
			int start_num = last_num - 4;

			List<ReservationDTO> reservationlist = service.selectReservation2(
					mid, start_num, last_num);
			List<ReservationDTO> reservationlist2 = service.selectByaid11(mid);

			mv.addObject("reservationlist", reservationlist);
			mv.addObject("reservationlistsize", reservationlist2.size());
			mv.setViewName("/members/myparking/reservecheck");
			return mv;
		}
	}
}
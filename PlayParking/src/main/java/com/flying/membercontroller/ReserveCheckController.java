package com.flying.membercontroller;

import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.flying.model.ParkingDTO;
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
			MembersDTO memcheck = 
					     (MembersDTO)session.getAttribute("memcheck");
			String mid = memcheck.getMid();
			System.out.println("예약확인mid:" + mid);
			System.out.println(pageno);
//			pageno="1";
			if(pageno == null)
				pageno="1";
			int last_num = Integer.parseInt(pageno)*10;
	    	int start_num = last_num-9;
	    	
//			List<ParkingDTO> pnamelist=null;
//			List<ReservationDTO> reservationlist = service.selectBymid(mid);

//	    	List<ReservationDTO> reservationlist = service.selectReservation(mid);
//			for(ReservationDTO dto: reservationlist){
//				pnamelist.add(service.selectBypid(dto.getPid()));
//			}
//			
//			mv.addObject("pnamelist", pnamelist);
//			System.out.println(pname);
			List<ReservationDTO> reservationlist = service.selectByaid(mid,start_num,last_num);
			List<ReservationDTO> reservationlist2 = service.selectByaid11(mid);
			
			mv.addObject("reservationlist", reservationlist);
			mv.addObject("reservationlistsize", reservationlist2.size());
			mv.setViewName("/members/myparking/reservecheck");
			return mv;
		}
	}	
}

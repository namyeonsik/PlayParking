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
import com.flying.model.PayPointDTO;
import com.flying.model.PayPointServiceInterface;

@Controller
public class PayPointController {

	@Autowired
	MembersServiceInterface service;

	@Autowired
	PayPointServiceInterface pservice;

	@RequestMapping(value = "/paypoint.do", method = RequestMethod.GET)
	public ModelAndView paypointGet(HttpServletRequest request) {

		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO) session.getAttribute("memcheck");
		System.out.println("포인트충전mid:" + memcheck);

		ModelAndView mv = new ModelAndView();
		MembersDTO members = service.selectBymid(memcheck.getMid());

		System.out.println("확인:" + members);
		mv.addObject("mem", members);
		session.setAttribute("memcheck", members);
		mv.setViewName("members/myparking/paypoint");
		return mv;
	}

	PayPointDTO ps = new PayPointDTO();

	@RequestMapping(value = "/paypoint.do", method = RequestMethod.POST)
	public String paypointPost(MembersDTO point) {
		ps.setPaypoint(point.getMpoint());
		ps.setMid(point.getMid());
		System.out.println("point값은?" + point);
		int ret1 = service.updatePoint(point);
		int ret2 = pservice.insertPoint(ps);
		System.out.println(ret1 + "건 수정.." + point);
		System.out.println(ret2 + "건 수정.." + ps);
		return "redirect:paysuccess.do";
	}
}
package com.flying.membercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
public class JoinController {

	@Autowired
	MembersServiceInterface service;

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String joinGet() {
		return "/members/join";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	@Transactional(propagation = Propagation.REQUIRED)
	public ModelAndView joinPost(MembersDTO member, HttpServletRequest request,
			HttpSession session) {
		System.out.println("왔니!!");
		
		ModelAndView mv = new ModelAndView();

		if (member != null) {
			int ret = service.insertMembers(member);
			System.out.println(ret + "건 입력");
			System.out.println(member);
			mv.setViewName("members/member_main");
		} else {
			mv.setViewName("members/join");
		}

		return mv;
	}

	@RequestMapping(value = "/idcheck.do", method = RequestMethod.GET)
	@Transactional(propagation = Propagation.REQUIRED)
	public ModelAndView idcheckGet(HttpServletRequest request,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/idcheck");
		return mv;
	}

	@RequestMapping(value = "/idcheck.do", method = RequestMethod.POST)
	@Transactional(propagation = Propagation.REQUIRED)
	public ModelAndView joinmsgPost(String mid, HttpServletRequest request,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		MembersDTO member = service.selectBymid(mid);
		if (member != null) {
			mv.addObject("idcheckmsg", "사용할 수 없는 id입니다.");

		} else {
			if (mid.length() < 5) {
				mv.addObject("idcheckmsg", "사용할 수 없는 id입니다.");
			} else if (mid.length() > 16) {
				mv.addObject("idcheckmsg", "사용할 수 없는 id입니다.");
			} else {
				mv.addObject("idcheckmsg", "사용할 수 있는 id입니다.");
			}
		}
		mv.setViewName("members/idcheck");
		return mv;
	}

}

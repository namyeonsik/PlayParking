package com.flying.membercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;
@Controller
public class MemberUpdateController {
	
	@Autowired
	MembersServiceInterface service;
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.GET)
	public ModelAndView updateGet(String mid){
		ModelAndView mv = new ModelAndView();	
		MembersDTO member = service.selectBymid(mid);
		
		mv.addObject("member", member);
		mv.setViewName("/members/myparking/memberupdate");
		return mv;
	}
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.POST)
	public String updatePost(MembersDTO mem){
		int ret = service.updateMembers(mem);
		System.out.println(ret+"°Ç ¼öÁ¤....."+mem);
		return "redirect:/members/member_main";
	}
	
}

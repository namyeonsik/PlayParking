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
@Controller
public class MemberUpdateController {
	
	@Autowired
	MembersServiceInterface service;
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.GET)
	public ModelAndView updateGet(HttpServletRequest request){
		
		//System.out.println("정보수정:"+member.getMid());
		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		System.out.println("정보수정mid:"+memcheck);
		
		ModelAndView mv = new ModelAndView();	
		MembersDTO members = service.selectBymid(memcheck.getMid());

		mv.addObject("mem", members);
		session.setAttribute("memcheck", members);
		mv.setViewName("/members/myparking/memberupdate");
		return mv;
	}
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.POST)
	public String updatePost(MembersDTO mem){
		System.out.println("mem값은?"+mem);
		int ret = service.updateMembers(mem);
		System.out.println(ret+"건 수정.."+mem);
		return "redirect:/membermain.do";
	}
	
}

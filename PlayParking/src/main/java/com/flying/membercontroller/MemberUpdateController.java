package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.CarDTO;
import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;
@Controller
public class MemberUpdateController {
	
	@Autowired
	MembersServiceInterface service;
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.GET)
	public ModelAndView updateGet(HttpServletRequest request, HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memcheck")==null){			
			mv.setViewName("members/notmember");
			return mv;
		}else{
		
		session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		System.out.println("정보수정mid:"+memcheck);
			
		MembersDTO members = service.selectBymid(memcheck.getMid());

		mv.addObject("mem", members);
		session.setAttribute("memcheck", members);
		mv.setViewName("/members/myparking/memberupdate");
		return mv;
		}
	}
	
	@RequestMapping(value="/memberupdate.do", method=RequestMethod.POST)
	public String updatePost(MembersDTO mem){
		System.out.println("mem값은?"+mem);
		int ret = service.updateMembers(mem);
		System.out.println(ret+"건 수정.."+mem);
		
		return "redirect:/memberupdate.do";
	}	
	
	@RequestMapping(value="/carname_update.do", method=RequestMethod.POST)
	public ModelAndView carnamePost(String cbrand){
		
		List<CarDTO> car = service.selectByCbrand(cbrand);
		ModelAndView mv = new ModelAndView();
		mv.addObject("car", car);
		mv.setViewName("/members/myparking/cname_update");
		return mv;
	}
	
	@RequestMapping(value="/deletemember.do", method=RequestMethod.POST)
	public String deletePost(String mid){
		System.out.println("mem값은?"+mid);
		int ret = service.deleteMembers(mid);
		System.out.println(ret+"건 삭제");
		return "redirect:/membermain.do";
	}
}

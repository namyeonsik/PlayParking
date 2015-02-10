package com.flying.membercontroller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.CarDTO;
import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
public class JoinController {
	//멤버컨트롤러를 하려면 서비스를 알아야함
	@Autowired
	MembersServiceInterface service; 
	
	@RequestMapping("/join.do")
	public String test(){
		return "members/join";
	}
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String joinGet(){
		return "/members/member_login";
	}
	
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	@Transactional(propagation=Propagation.REQUIRED)
	public String joinPost(MembersDTO member, HttpServletRequest request){		
		int ret = service.insertMembers(member);
		System.out.println(ret+"건 입력");		
		System.out.println(member);			
		return "redirect:/membermain.do";
	}
	
	
	@RequestMapping(value="/carname.do", method=RequestMethod.POST)
	public ModelAndView carnamePost(String cbrand){
		
		List<CarDTO> car = service.selectByCbrand(cbrand);
		ModelAndView mv = new ModelAndView();
		mv.addObject("car", car);
		mv.setViewName("/members/cname");
		return mv;
	}
	
}

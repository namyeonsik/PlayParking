package com.flying.membercontroller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
public class JoinController {
	//회원가입페이지
	@Autowired
	MembersServiceInterface service; 
	
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String joinGet(){
		return "/members/join";
	}
	
	
	
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	@Transactional(propagation=Propagation.REQUIRED)
	public String joinPost(MembersDTO member, HttpServletRequest request){		
		System.out.println(member.getMid()+"mid 왔나요????");
		int ret = service.insertMembers(member);
		System.out.println(ret+"입력되었습니다.");		
		System.out.println(member);			
		return "redirect:/membermain.do";
	}

	
}

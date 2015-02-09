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
					
		return "redirect:/membermain.do";
	}
	
}

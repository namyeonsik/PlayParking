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
	//회원가입페이지
	@Autowired
	MembersServiceInterface service; 
	
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String joinGet(){
		return "/members/join";
	}
	
	
	
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	@Transactional(propagation=Propagation.REQUIRED)
	public ModelAndView joinPost(MembersDTO member, HttpServletRequest request,HttpSession session){		
		int ret = service.insertMembers(member);
		ModelAndView mv = new ModelAndView();
		if(ret!=0){
			session.setAttribute("joinok", "회원가입이 완료되었습니다.");
		}
		System.out.println(ret+"건 입력되었습니다.");		
		System.out.println(member);
		mv.setViewName("members/member_main");
		return mv;
	}

	
}

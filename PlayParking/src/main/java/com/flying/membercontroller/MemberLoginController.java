package com.flying.membercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
@RequestMapping(value="/memberlogin.do")
public class MemberLoginController {

	@Autowired
	MembersServiceInterface service; 
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView loginPost(MembersDTO member, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		System.out.println(member);
		System.out.println(member.getMid());
		MembersDTO memcheck = 
				service.selectByUser(member.getMid(), member.getMpwd());
		
		session.setAttribute("memcheck", memcheck); 
		if(memcheck!=null){
			mv.setViewName("members/loginConfirmMain");
			
		}else{
			mv.setViewName("members/member_main");
			mv.addObject("msg", "아이디나 비밀번호를 확인해주세요.");
		}
		return mv;
	}

}

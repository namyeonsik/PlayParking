package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;

@Controller
@RequestMapping(value="/memberlogout.do")
public class MemberLogoutController {

	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(){
		return "members/member_main";
	}

}

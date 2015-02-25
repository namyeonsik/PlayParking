package com.flying.membercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/memberlogout.do")
public class MemberLogoutController {

	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(HttpSession session) {
		session.invalidate();
		return "members/member_main";
	}

}

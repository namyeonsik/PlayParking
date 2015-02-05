package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberMainController {

	@RequestMapping("/membermain.do")
	public String test(){
		return "members/member_main";
	}
}

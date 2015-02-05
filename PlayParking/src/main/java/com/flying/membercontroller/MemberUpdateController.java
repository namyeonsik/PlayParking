package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MemberUpdateController {
	
	@RequestMapping("/memberupdate.do")
	public String test(){
		return "members/myparking/memberupdate";
	}
}

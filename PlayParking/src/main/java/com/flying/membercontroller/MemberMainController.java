package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberMainController {

	@RequestMapping("/fast.do")
	public String test(){
		return "member_main";
	}
}

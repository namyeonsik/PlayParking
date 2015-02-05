package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayPointController {
	
	@RequestMapping("/paypoint.do")
	public String test(){
		return "members/myparking/paypoint";
	}

}

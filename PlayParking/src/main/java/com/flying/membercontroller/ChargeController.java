package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChargeController {

	@RequestMapping("/charge.do")
	public String test(){
		return "members/charge";
	}
	
}

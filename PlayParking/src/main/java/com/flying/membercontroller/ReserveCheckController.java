package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ReserveCheckController {

	
	@RequestMapping("/reservecheck.do")
	public String test(){
		return "members/myparking/reservecheck";
	}
}

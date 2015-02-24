package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CancelController {
	@RequestMapping(value="/cancel.do", method=RequestMethod.GET)
	public String cancelGet(){
		return "members/myparking/cancel";
	}
}

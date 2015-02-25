package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaySuccessController {

	@RequestMapping(value = "/paysuccess.do", method = RequestMethod.GET)
	public String paysuccessGet() {
		return "members/myparking/paysuccess";
	}
}

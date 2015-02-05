package com.flying.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminMainController {
	@RequestMapping("/adminmain.do")
	public String adminMain(){
		return "/admin/admin_main";
	}
}

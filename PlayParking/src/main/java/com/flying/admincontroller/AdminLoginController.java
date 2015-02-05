package com.flying.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminLoginController {
	@RequestMapping("/adminlogin.do")
	public String adminLogin(){
		return "admin/admin_login";
	}
}

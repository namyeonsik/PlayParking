package com.flying.admincontroller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/adminlogout.do")
public class AdminLogoutController {

	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(HttpSession session) {
		session.invalidate();
		return "admin/admin_login";
	}

}

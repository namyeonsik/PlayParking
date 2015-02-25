package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberMainController {

	@RequestMapping("/membermain.do")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "");
		mv.setViewName("members/member_main");
		return mv;
	}
}

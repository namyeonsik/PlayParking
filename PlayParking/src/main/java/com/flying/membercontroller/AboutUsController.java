package com.flying.membercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutUsController {

    @RequestMapping("/aboutus.do")
	public ModelAndView aboutGet(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/aboutus");
		return mv;
	}


}

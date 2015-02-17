package com.flying.membercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.flying.model.MembersServiceInterface;

@Controller
@RequestMapping(value="/aboutus.do")
public class AboutUsController {

	@Autowired
	MembersServiceInterface service; 
	
	@RequestMapping(method = RequestMethod.GET)
	public String aboutGet(){
		return "members/aboutus";
	}


}

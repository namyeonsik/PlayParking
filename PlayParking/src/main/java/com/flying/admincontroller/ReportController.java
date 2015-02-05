package com.flying.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ReportController {
	
	@RequestMapping("/adminreport.do")
	public String report(){
		return "admin/report";
	}
}

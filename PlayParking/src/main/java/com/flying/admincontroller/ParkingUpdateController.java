package com.flying.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ParkingUpdateController {
	@RequestMapping("/parkingupdate.do")
	public String parkingUpdate(){
		return "/admin/parkingupdate";
	}
}

package com.flying.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;

@Controller
public class ParkingInfoController {

	@Autowired
	ParkingServiceInterface service;

	@RequestMapping("/parkinginfo.do")
	public String parkingUpdate() {
		return "/admin/parkinginfo";
	}

	@RequestMapping(value = "/parkinginfo.do", method = RequestMethod.GET)
	public ModelAndView updateGet(HttpServletRequest request,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("admincheck") == null) {
			mv.setViewName("admin/admin_login");
			return mv;
		} else {

			session = request.getSession();
			AdminDTO admincheck = (AdminDTO) session.getAttribute("admincheck");
			System.out.println("정보수정pid:" + admincheck);

			ParkingDTO parking = service.selectBypid(admincheck.getPid());

			mv.addObject("parking", parking);
			session.setAttribute("parking", parking);
			mv.setViewName("/admin/parkinginfo");
			return mv;
		}
	}

}
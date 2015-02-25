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
public class ParkingUpdateController {

	@Autowired
	ParkingServiceInterface service;

	@RequestMapping("/parkingupdate.do")
	public String parkingUpdate() {
		return "/admin/parkingupdate";
	}

	@RequestMapping(value = "/parkingupdate.do", method = RequestMethod.GET)
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
			mv.setViewName("/admin/parkingupdate");
			return mv;
		}
	}

	@RequestMapping(value = "/parkingupdate.do", method = RequestMethod.POST)
	public String updatePost(ParkingDTO parking) {
		System.out.println("parking값은?" + parking);
		int ret = service.updateParking(parking);
		System.out.println(ret + "건 수정.." + parking);
		return "redirect:/adminmain.do";
	}

}
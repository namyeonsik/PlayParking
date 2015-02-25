package com.flying.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.NoticeDTO;
import com.flying.model.NoticeServiceInterface;

@Controller
public class NoticeInsertController {

	@Autowired
	NoticeServiceInterface service;

	@RequestMapping(value = "/noticeinsert.do", method = RequestMethod.GET)
	public ModelAndView insertGet(HttpServletRequest request,
			HttpSession session, String cnt) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("admincheck") == null) {
			mv.setViewName("admin/admin_login");
			return mv;
		} else {
			session = request.getSession();
			AdminDTO admincheck = (AdminDTO) session.getAttribute("admincheck");
			System.out.println("*********notice insert_pid:" + admincheck);
			System.out.println("cnt!!!" + cnt);

			mv.addObject("adminid", admincheck.getAid());
			mv.addObject("cnt", cnt);
			mv.setViewName("/admin/notice_insert");

			return mv;
		}
	}

	@RequestMapping(value = "/noticeinsert.do", method = RequestMethod.POST)
	public String insertPost(NoticeDTO notice) {
		System.out.println(notice);
		int ret = service.insertNotice(notice);
		System.out.println(ret + "°Ç ÀÔ·Â!!!!!");
		return "redirect:/noticelist2.do?pageno=1";
	}

}
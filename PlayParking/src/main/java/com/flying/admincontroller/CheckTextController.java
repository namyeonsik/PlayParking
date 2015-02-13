package com.flying.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.NoticeDTO;
import com.flying.model.NoticeServiceInterface;

@Controller
public class CheckTextController {

	@Autowired
	NoticeServiceInterface service;
	
	@RequestMapping("/checktext.do")
	public ModelAndView test(@RequestParam("nno") int no, HttpServletRequest request, HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("admincheck")==null){         
	         mv.setViewName("admin/admin_login");
	         return mv;
		}else{	
		System.out.println("no:"+no);
		session = request.getSession();
    	AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");
    	System.out.println(admincheck.getAid());
    	NoticeDTO text = service.selectByNno(no, admincheck.getAid());
    	/*NoticeDTO text = service.selectText(no, admincheck.getAid());
    	System.out.println(text);*/
    	System.out.println(text);
    	mv.addObject("text", text.getNtext());
    	mv.setViewName("admin/checktext");
		return mv;
		}
	}
}

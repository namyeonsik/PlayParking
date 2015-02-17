package com.flying.admincontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.MembersDTO;
import com.flying.model.NoticeDTO;
import com.flying.model.NoticeServiceInterface;

@Controller
public class CheckTextController {

	@Autowired
	NoticeServiceInterface service;
	
	@RequestMapping("/checktextmem.do")
	public ModelAndView test_member(@RequestParam("nno") int no, @RequestParam("aid") String aid, HttpServletRequest request, HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memcheck")==null){         
	         mv.setViewName("member/member_login");
	         return mv;
		}else{	
		System.out.println("no:"+no);
		session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		
    	System.out.println(memcheck.getMid());
    	
    	NoticeDTO notice = service.selectByNno(no,aid);
    	
    	System.out.println("*****************"+notice);
    	
    	mv.addObject("title", notice.getNtitle());
    	mv.addObject("text", notice.getNtext());
    	mv.addObject("date", notice.getNdate());
    	mv.setViewName("admin/checktext_member");
		return mv;
		}
	}
	
	@RequestMapping("/checktext.do")
	public ModelAndView test_admin(@RequestParam("nno") int no, HttpServletRequest request, HttpSession session){
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
    	mv.addObject("title", text.getNtitle());
    	mv.addObject("text", text.getNtext());
    	mv.addObject("date", text.getNdate());
    	mv.addObject("nno", text.getNno());
    	mv.setViewName("admin/checktext");
		return mv;
		}
	}
}

package com.flying.admincontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.MembersDTO;
import com.flying.model.NoticeDTO;
import com.flying.model.NoticeServiceInterface;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
@Controller
public class NoticeListController {
   
   @Autowired
   NoticeServiceInterface service;  
   
   @Autowired
   ParkingServiceInterface parkingservice;
   
   
   @RequestMapping(value="/noticelist1.do")
   public ModelAndView listGet1(HttpServletRequest request, HttpSession session){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("memcheck")==null){			
			mv.setViewName("members/member_login");
			return mv;
		}else{
    	 session = request.getSession();
    	 MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");    	 
  		List<NoticeDTO> noticelist = service.selectMembernotice();
  		mv.addObject("noticelist", noticelist);  		
  		mv.addObject("memberid", memcheck.getMid());
  		mv.setViewName("/admin/notice_list_admin");
  		return mv;
      }
   }
   
   @RequestMapping(value="/noticelist2.do")
   public ModelAndView listGet2(HttpServletRequest request, HttpSession session){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("admincheck")==null){         
	         mv.setViewName("admin/admin_login");
	         return mv;
		}else{
    	session = request.getSession();
    	AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");         
  		List<NoticeDTO> noticelist = service.selectByaid(admincheck.getAid());
    	//List<NoticeDTO> noticelist = service.selectByaid2(admincheck.getAid());
  		System.out.println("++++++++++"+noticelist+"++++++++++");
  		
  		ParkingDTO parking = parkingservice.selectBypid(admincheck.getPid());
  		mv.addObject("pname",parking.getPname());
  		mv.addObject("noticelist", noticelist);
  		//mv.addObject("adminid", admincheck.getAid());
  		mv.setViewName("/admin/notice_list_admin");
  		return mv;
      }
   }
   
}
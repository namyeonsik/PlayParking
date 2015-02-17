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
   public ModelAndView listGet1(HttpServletRequest request, HttpSession session, String pageno){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("memcheck")==null){			
			mv.setViewName("members/member_login");
			return mv;
		}else{
    	 session = request.getSession();
    	 MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");    	 
  		List<NoticeDTO> noticelist = service.selectMembernotice(); //다 가져오기
  		mv.addObject("noticelist", noticelist); 
  		mv.addObject("noticelistsize", noticelist.size());
  		mv.addObject("memberid", memcheck.getMid());
  		mv.setViewName("/admin/notice_list_member");
  		return mv;
      }
   }
   
   @RequestMapping(value="/noticelist2.do")
   public ModelAndView listGet2(HttpServletRequest request, HttpSession session, String pageno){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("admincheck")==null){         
	         mv.setViewName("admin/admin_login");
	         return mv;
		}else{
    	session = request.getSession();
    	AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");      
    	 
    	int last_num = Integer.parseInt(pageno)*10;
    	int start_num = last_num-9;
    	
    	List<NoticeDTO> noticelist = service.selectByaid(admincheck.getAid(),start_num,last_num);
    	
    	List<NoticeDTO> noticelist2 = service.selectByaid11(admincheck.getAid()); 
    	
    	String maxnno = service.selectMaxnno(admincheck.getAid());
    	
  		ParkingDTO parking = parkingservice.selectBypid(admincheck.getPid());
  		mv.addObject("pname",parking.getPname());
  		mv.addObject("noticelist", noticelist);
  		mv.addObject("noticelistsize", noticelist2.size());
  		mv.addObject("maxnno", maxnno);
  		mv.setViewName("/admin/notice_list_admin");
  		return mv;
      }
   }
   
}

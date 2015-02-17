package com.flying.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class NoticeInsertController {
   
   @Autowired
   NoticeServiceInterface service;
   
    
   @RequestMapping(value="/noticeinsert.do", method=RequestMethod.GET)
   public ModelAndView insertGet(HttpServletRequest request, HttpSession session, String cnt){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("admincheck")==null){         
         mv.setViewName("admin/admin_login");
         return mv;
      }else{    	  
    	  session = request.getSession();
          AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");
          System.out.println("*********notice insert_pid:"+admincheck);
          	
          System.out.println("cnt!!!!!!!!!!!!!"+cnt);
          
          mv.addObject("adminid", admincheck.getAid());
          mv.addObject("cnt", cnt);
          mv.setViewName("/admin/notice_insert");
          
          return mv;
      }
   }
   
   @RequestMapping(value="/noticeinsert.do", method=RequestMethod.POST)
   public String insertPost(NoticeDTO notice, HttpServletRequest request){
	   System.out.println(notice+"天天天天天天天天天天天天天天天天");
	   String ntitle = request.getParameter("ntitle");
	   System.out.println(ntitle);
	   int ret = service.insertNotice(notice);
	   System.out.println(ret+"勒 殮溘!!!!!");
      return "redirect:/noticelist2.do?pageno=1";
   }   
   
   
}
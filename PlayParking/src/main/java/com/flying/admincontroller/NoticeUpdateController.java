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
import com.flying.model.ParkingDTO;
@Controller
public class NoticeUpdateController {
   
   @Autowired
   NoticeServiceInterface service;
   
   @RequestMapping(value="/noticeupdate.do", method=RequestMethod.GET)
   public ModelAndView noticeupdateGet(HttpServletRequest request, HttpSession session){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("admincheck")==null){         
         mv.setViewName("admin/admin_login");
         return mv;
      }else{
      
      session = request.getSession();
      AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");
      System.out.println("정보수정pid:"+admincheck);
         
      NoticeDTO notice = service.selectByNno(Integer.parseInt(request.getParameter("nno")),
    		  admincheck.getAid());
      
      mv.addObject("notice", notice);
      session.setAttribute("notice", notice);
      mv.setViewName("/admin/notice_update");
      return mv;
      }
   }
   
   @RequestMapping(value="/noticeupdate.do", method=RequestMethod.POST)
   public String noticeupdatePost(NoticeDTO notice){
	  System.out.println(notice+"노티스!!!!!!!!!!!!");
      int ret = service.updateNotice(notice);
      System.out.println(ret+"건 수정!!!!");
      return "redirect:/noticelist2.do?pageno=1";
   }   
   
}
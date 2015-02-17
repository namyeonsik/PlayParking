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
import com.flying.model.ParkingServiceInterface;
@Controller
public class NoticeDeleteController {
   
   @Autowired
   NoticeServiceInterface service;
    
   
   @RequestMapping(value="/noticedelete.do")
   public String delete(HttpServletRequest request, HttpSession session, String nno){
     ModelAndView mv = new ModelAndView();
      /*if(session.getAttribute("admincheck")==null){         
         mv.setViewName("admin/admin_login");
         return mv;
      }else{*/
      
      session = request.getSession();
      AdminDTO admincheck = (AdminDTO)session.getAttribute("admincheck");
      System.out.println("notice delete pid:"+admincheck);
      System.out.println("ばばばばばばばばば"+Integer.parseInt(nno)+"ばばば"+admincheck.getAid());  
      
      NoticeDTO notice = service.selectByNno(Integer.parseInt(nno), admincheck.getAid());
      System.out.println(notice+"//////////////");
      
      int ret = service.deleteNotice(notice);
      System.out.println(ret+"闇 肢薦!!!!!!!");
      
      mv.addObject("notice", notice);
      session.setAttribute("notice", notice);
      mv.setViewName("/admin/parkingdelete");
      
      
      return "redirect:noticelist2.do?pageno=1";
      //}
   }
}
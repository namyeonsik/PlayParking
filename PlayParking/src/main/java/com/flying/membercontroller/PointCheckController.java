package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;
import com.flying.model.PayPointDTO;
import com.flying.model.PayPointServiceInterface;
@Controller
public class PointCheckController {
   
   @Autowired
   PayPointServiceInterface service;
   
   @Autowired
   MembersServiceInterface mservice;
   
   @RequestMapping("/pointcheck.do")
   public ModelAndView test(HttpServletRequest request, HttpSession session){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("memcheck")==null){         
         mv.setViewName("members/member_login");
         return mv;
      }else{
         session = request.getSession();
         MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
         MembersDTO point = mservice.selectBymid(memcheck.getMid());
         System.out.println(point+"^&&^$^");
         List<PayPointDTO> paypointlist = service.selectBymid(memcheck.getMid());
         System.out.println("paypointlist:"+paypointlist);
         
         mv.addObject("point", point);
         mv.addObject("paypointlist", paypointlist);
      
         mv.setViewName("members/myparking/pointcheck");
         return mv;
      }
   }
   
}
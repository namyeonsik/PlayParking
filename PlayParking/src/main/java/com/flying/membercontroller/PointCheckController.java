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
import com.flying.model.UsePointDTO;
import com.flying.model.UsePointServiceInterface;
@Controller
public class PointCheckController {
   
   @Autowired
   PayPointServiceInterface service;
   
   @Autowired
   MembersServiceInterface mservice;
   
   @Autowired
   UsePointServiceInterface uservice;
   
   @RequestMapping("/pointcheck.do")
   public ModelAndView test(HttpServletRequest request, HttpSession session){
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("memcheck")==null){         
         mv.setViewName("members/notmember");
         return mv;
      }else{
         session = request.getSession();
         
         MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
         MembersDTO point = mservice.selectBymid(memcheck.getMid());
         System.out.println("point:"+point);
         
         List<PayPointDTO> paypointlist = service.selectBymid(memcheck.getMid());
         System.out.println("paypointlist:"+paypointlist);
         List<PayPointDTO> tenpaypointlist = service.selectBytenmid(memcheck.getMid());
         System.out.println("tenpaypointlist:"+tenpaypointlist);
         
         List<UsePointDTO> usepointlist = uservice.selectBymid(memcheck.getMid());
         System.out.println("usepointlist:"+usepointlist);
         List<UsePointDTO> tenusepointlist = uservice.selectBytenmid(memcheck.getMid());
         System.out.println("tenusepointlist:"+tenusepointlist);
         
         mv.addObject("point", point);         
         mv.addObject("paypointlist", paypointlist);
         mv.addObject("tenpaypointlist", tenpaypointlist);
         mv.addObject("usepointlist", usepointlist);
         mv.addObject("tenusepointlist", tenusepointlist);
         
         mv.setViewName("members/myparking/pointcheck");
         return mv;
      }
   }
   
}
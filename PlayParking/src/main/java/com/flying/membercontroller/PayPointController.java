package com.flying.membercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;
import com.flying.model.PayPointDTO;
import com.flying.model.PayPointServiceInterface;

@Controller
public class PayPointController {
	
	@Autowired
//	PayPointServiceInterface service;
	MembersServiceInterface service;
	
	@RequestMapping(value="/paypoint.do", method=RequestMethod.GET)
	public ModelAndView paypointGet(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
		System.out.println("포인트충전mid:"+memcheck);
		
		ModelAndView mv = new ModelAndView();	
		MembersDTO members = service.selectBymid(memcheck.getMid());

		System.out.println("확인:"+members);
		mv.addObject("mem", members);
		session.setAttribute("memcheck", members);
		mv.setViewName("members/myparking/paypoint");
		//System.out.println("여기까지 왔니");
		return mv;
	}
	
	@RequestMapping(value="/paypoint.do", method=RequestMethod.POST)
	public String paypointPost(MembersDTO point){
		System.out.println("point값은?"+point);
		int ret = service.updatePoint(point);
//		int ret = service.insertPoint(point);
		System.out.println(ret+"건 수정.."+point);
		return "redirect:paysuccess.do";
	}
	
	/*@RequestMapping("/paypoint.do")
	public String test(){
		return "members/myparking/paypoint";
	}*/
}

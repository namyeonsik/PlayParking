package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
@Controller
public class SearchController {
	
	@Autowired
	ParkingServiceInterface service;
	
	@RequestMapping(value="/search.do", method=RequestMethod.GET)
	public ModelAndView searchGet(HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memcheck")==null){		
			mv.setViewName("members/notmember");
			return mv;
		}else{
			mv.setViewName("members/search_get");
			return mv;
		}
	}
	
	@RequestMapping(value="/search.do", method=RequestMethod.POST)
	public ModelAndView searchPost(HttpServletRequest request, HttpSession session){
		System.out.println(session.getAttribute("memcheck").toString());
		if(session.getAttribute("memcheck")==null){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("members/member_login");
			return mv;
		}else{
		
			String plocation = request.getParameter("plocation");
			if(plocation==null)
				plocation="";		
			List<ParkingDTO> parkinglist = service.selectByplocation(plocation);
			
			
			List<ParkingDTO> parkinglist2 = null; 
			String makchum = request.getParameter("makchum");
			if(makchum==null)
				makchum="";
			else if(makchum.equals("절약형")){
				parkinglist2 = service.selectBymakchum_1(plocation);
			}
			else if(makchum.equals("지각형")){
				parkinglist2 = service.selectBymakchum_2(plocation);
			}
			else if(makchum.equals("안전형")){
				parkinglist2 = service.selectBymakchum_3(plocation);
			}
			
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("parkinglist", parkinglist);
			if(parkinglist2!=null){
				mv.addObject("parkinglist2", parkinglist2);
			}else{}
			
			/*String[] selected = {"","","","","","" };
			if(plocation.equals("강북구")) selected[0]="selected";
			if(plocation.equals("강남구")) selected[1]="selected";
			if(plocation.equals("마포구")) selected[2]="selected";
			if(plocation.equals("종로구")) selected[3]="selected";
			if(plocation.equals("은평구")) selected[4]="selected";
			if(plocation.equals("서대문구")) selected[5]="selected";
			mv.addObject("pp", plocation);
			mv.addObject("selected", selected);
			mv.addObject("parklistsize", parkinglist.size());		
			for(String s : selected){
				System.out.println(s);
			}*/
			
			mv.setViewName("/members/search");
			return mv;
		}
	}
}


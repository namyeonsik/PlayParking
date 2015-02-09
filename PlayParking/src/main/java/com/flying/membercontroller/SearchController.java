package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public String searchGet(){
		return "members/search_get";
	}
	
	@RequestMapping(value="/search.do", method=RequestMethod.POST)
	public ModelAndView searchPost(HttpServletRequest request){
		String plocation = request.getParameter("plocation");
		if(plocation==null)
			plocation="";
		
		ModelAndView mv = new ModelAndView();
		List<ParkingDTO> parkinglist = service.selectByplocation(plocation);
		
		System.out.println(parkinglist.size());
		mv.addObject("parkinglist", parkinglist);
		
		String[] selected = {"","","","","","" };
		if(plocation.equals("���ϱ�")) selected[0]="selected";
		if(plocation.equals("������")) selected[1]="selected";
		if(plocation.equals("������")) selected[2]="selected";
		if(plocation.equals("���α�")) selected[3]="selected";
		if(plocation.equals("����")) selected[4]="selected";
		if(plocation.equals("���빮��")) selected[5]="selected";
		mv.addObject("pp", plocation);
		mv.addObject("selected", selected);
		mv.addObject("parklistsize", parkinglist.size());		
		for(String s : selected){
			System.out.println(s);
		}
		
		mv.setViewName("/members/search");
		return mv;
	}
}


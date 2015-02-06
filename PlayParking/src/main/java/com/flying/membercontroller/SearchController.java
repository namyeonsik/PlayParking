package com.flying.membercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
@Controller
public class SearchController {
	
	@Autowired
	ParkingServiceInterface service;
	
	@RequestMapping("/search.do")
	public ModelAndView getMaplist(HttpServletRequest request){
		
		String plocation = request.getParameter("plocation");
		if(plocation==null)
	         plocation="";
		System.out.println(plocation+"!!!");
		ModelAndView mv = new ModelAndView();
		List<ParkingDTO> parkinglist = service.selectByplocation(plocation);
		
		System.out.println(parkinglist.size());
		mv.addObject("parkinglist", parkinglist);
		
		String[] selected = {"","","","","","" };
		if(plocation.equals("강북구")) selected[0]="selected";
		if(plocation.equals("강남구")) selected[1]="selected";
		if(plocation.equals("마포구")) selected[2]="selected";
		if(plocation.equals("종로구")) selected[3]="selected";
		if(plocation.equals("은평구")) selected[4]="selected";
		if(plocation.equals("서대문구")) selected[5]="selected";
		mv.addObject("pp", plocation);
		mv.addObject("selected", selected);
		
		for(String s : selected){
			System.out.println(s);
		}
		
		mv.setViewName("/members/search");
		return mv;
	}
}

/*
<option value="강북구" selected=${pp=='강북구'?"selected":''}>강북구</option>
<option value="강남구" selected=${pp=='강남구'?"selected":''}>강남구</option>
<option value="마포구" selected=${pp=='마포구'?"selected":''}>마포구</option>
<option value="종로구" selected=${pp=='종로구'?"selected":''}>종로구</option>
<option value="은평구" selected=${pp=='은평구'?"selected":''}>은평구</option>
<option value="서대문구" 
*/
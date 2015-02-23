package com.flying.admincontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.AdminServiceInterface;

@Controller
@RequestMapping("/adminlogin.do")
public class AdminLoginController {
	
	@Autowired
	AdminServiceInterface adminservice;
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(){
		return "admin/admin_login";
	}


	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView loginPost(AdminDTO admin, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		System.out.println(admin);
		System.out.println(admin.getAid());
		
		AdminDTO admincheck = 
				adminservice.selectByAdmin(admin.getAid(), admin.getApwd());
		
		System.out.println(admincheck);
		session.setAttribute("admincheck", admincheck); 
		if(admincheck!=null){
			mv.setViewName("redirect:/adminmain.do");

		}else{
			
			mv.setViewName("admin/admin_login");
			mv.addObject("adminmsg", "아이디나 로그인을 확인해주세요!");
		}
		return mv;
	}
}

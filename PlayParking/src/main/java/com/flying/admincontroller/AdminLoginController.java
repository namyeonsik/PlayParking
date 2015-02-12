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


	// 여러개값을 받을경우 DTO를 만들어서 받는다.
	@RequestMapping(method = RequestMethod.POST)
	// 요청하는 이름.
	public ModelAndView loginPost(AdminDTO admin, HttpSession session) {
		// 파라미터받아서 디비에가서 확인작업하는 내용
		ModelAndView mv = new ModelAndView();
		System.out.println(admin);
		System.out.println(admin.getAid());
		
		AdminDTO admincheck = 
				adminservice.selectByAdmin(admin.getAid(), admin.getApwd());
		
		System.out.println(admincheck);
		session.setAttribute("admincheck", admincheck); //jsp에서 넘겨받기위함
		if(admincheck!=null){
			//로그인 성공
			mv.setViewName("redirect:/adminmain.do");

		}else{
			
			mv.setViewName("admin/admin_login");
			mv.addObject("adminmsg", "아이디와 로그인을 확인해주세요!");
		}
		return mv;
	}
}

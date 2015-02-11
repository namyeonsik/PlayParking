package com.flying.membercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
@RequestMapping(value="/memberlogin.do")
public class MemberLoginController {

	@Autowired
	MembersServiceInterface service; 
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(MembersDTO member){
		return "members/member_login";
	}


	// 여러개값을 받을경우 DTO를 만들어서 받는다.
	@RequestMapping(method = RequestMethod.POST)
	// 요청하는 이름.
	public ModelAndView loginPost(MembersDTO member, HttpSession session) {
		// 파라미터받아서 디비에가서 확인작업하는 내용
		ModelAndView mv = new ModelAndView();
		System.out.println(member);
		System.out.println(member.getMid());
		MembersDTO memcheck = 
				service.selectByUser(member.getMid(), member.getMpwd());
		
		session.setAttribute("memcheck", memcheck); //jsp에서 넘겨받기위함
		if(memcheck!=null){
			mv.setViewName("members/loginConfirmMain");
			
		}else{
			mv.setViewName("members/member_main");
			mv.addObject("msg", "로그인 실패");
		}
		return mv;
	}

}

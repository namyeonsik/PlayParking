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


	// ���������� ������� DTO�� ���� �޴´�.
	@RequestMapping(method = RequestMethod.POST)
	// ��û�ϴ� �̸�.
	public ModelAndView loginPost(MembersDTO member, HttpSession session) {
		// �Ķ���͹޾Ƽ� ��񿡰��� Ȯ���۾��ϴ� ����
		ModelAndView mv = new ModelAndView();
		System.out.println(member);
		System.out.println(member.getMid());
		MembersDTO memcheck = 
				service.selectByUser(member.getMid(), member.getMpwd());
		
		session.setAttribute("memcheck", memcheck); //jsp���� �Ѱܹޱ�����
		if(memcheck!=null){
			mv.setViewName("members/loginConfirmMain");
			
		}else{
			mv.setViewName("members/member_main");
			mv.addObject("msg", "�α��� ����");
		}
		return mv;
	}

}

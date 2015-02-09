package com.flying.membercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.flying.model.MembersDTO;
import com.flying.model.MembersServiceInterface;

@Controller
@RequestMapping(value="/memberlogin.do")
public class MemberLoginController {

	@Autowired
	MembersServiceInterface service; 
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(){
		return "members/member_login";
	}


	// 여러개값을 받을경우 DTO를 만들어서 받는다.
	@RequestMapping(method = RequestMethod.POST)
	// 요청하는 이름.
	public String loginPost(MembersDTO member) {
		// 파라미터받아서 디비에가서 확인작업하는 내용
		System.out.println(member);
		MembersDTO memcheck = service.selectBymid(member.getMid());
		System.out.println(memcheck+"%%%");
		if(memcheck!=null){
			return "members/loginConfirmMain";
		}else{
			return "members/member_main";
		}
	}

}

package com.flying.admincontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.flying.model.AdminDTO;
import com.flying.model.AdminServiceInterface;
import com.flying.model.MembersDTO;

@Controller
@RequestMapping("/adminlogin.do")
public class AdminLoginController {
	
	@Autowired
	AdminServiceInterface adminservice;
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginGet(){
		return "admin/admin_login";
	}


	// ���������� ������� DTO�� ���� �޴´�.
	@RequestMapping(method = RequestMethod.POST)
	// ��û�ϴ� �̸�.
	public String loginPost(AdminDTO admin, HttpSession session) {
		// �Ķ���͹޾Ƽ� ��񿡰��� Ȯ���۾��ϴ� ����
		System.out.println(admin);
		System.out.println(admin.getAid());
		AdminDTO admincheck = 
				adminservice.selectByAdmin(admin.getAid(), admin.getApwd());
		session.setAttribute("admincheck", admincheck); //jsp���� �Ѱܹޱ�����
		if(admincheck!=null){
			return "admin/adminConfirmMain";
		}else{
			return "admin/admin_main";
		}
	}
}

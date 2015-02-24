package com.flying.membercontroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.MailMail;
import com.flying.model.MembersDTO;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;

import com.flying.model.UsePointDTO;

@Controller
public class ReserveController {

	@Autowired
	ReservationServiceInterface service;

	@Autowired
	ParkingServiceInterface pservice;
	int pid = 0;
	int mpoint = 0;

	@RequestMapping(value = "/reserve.do", method = RequestMethod.POST)
	public ModelAndView test(HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("memcheck") == null) {
			mv.setViewName("members/notmember");
			return mv;
		} else {
			pid = Integer.parseInt(request.getParameter("pid"));
			System.out.println("pid:" + pid);
			System.out.println("get방식");
			ParkingDTO parking = pservice.selectBypid(pid);

			ParkingDTO park1 = service.selectBypid(pid);

			mv.addObject("parkingMpoint", park1.getPfare());
			mv.addObject("pname", parking.getPname());
			mv.addObject("pid", pid);
			mv.setViewName("members/reserve");
			return mv;
		}
	}

	@RequestMapping(value = "/reserve1.do", method = RequestMethod.POST)
	public ModelAndView test2(String date) {

		ModelAndView mv = new ModelAndView();
		int pcountcheck = pservice.checkCount(pid);
		int pamountcheck = pservice.checkAmount(pid);
		Date d = new Date();
		System.out.println(d.getHours() + "시" + d.getMinutes() + "분");
		int cal1 = 0;
		String[] hue1 = { "0930", "1000", "1030", "1100", "1130", "1200",
				"1230", "1300", "1330", "1400", "1430", "1500", "1530", "1600",
				"1630", "1700", "1730", "1800", "1830", "1900", "1930", "2000",
				"2030", "2100", "2130", "2200", "2230", "2300" };
		
		String ss1 = null;
		String ss2 = null;
		String ss3 = null;
		System.out.println("날짜는=" + date);

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		String today = format.format(d);
		System.out.println("today=" + today);
		System.out.println(today.equals(date));
		ss1 = Integer.toString(d.getHours());
		if(d.getMinutes()<10){
			ss2 ="0"+ Integer.toString(d.getMinutes());
		}else{
		ss2 = Integer.toString(d.getMinutes());
		}
		ss3 = ss1 + ss2;
		System.out.println("ss3===" + ss3);
		int cal3 = Integer.parseInt(ss3);

		int z = 0;
		System.out.println("hue1size=" + hue1.length);

		if (today.equals(date)){
			for (int i = 0; i < hue1.length; i++) {
				int k = Integer.parseInt(hue1[i]);

				if (k > cal3) {

					// System.out.println("hue1="+hue1[i]);
				/*	hue2[z] = hue1[i];
					System.out.println("hue2=" + hue2[z]);*/
					z = z + 1;

				}
				

			}
			System.out.println("z==="+z);
			String[] hue2 = new String[z];
			int p=0;
			for (int i = 0; i < hue1.length; i++) {
				int k = Integer.parseInt(hue1[i]);

				if (k > cal3) {

					// System.out.println("hue1="+hue1[i]);
					hue2[p] = hue1[i];
					System.out.println("hue2=" + hue2[p]);
					p=p+1;

				}
				

			}

			if (pcountcheck > (pamountcheck * 0.1)) {
				String check = "예약가능";
				System.out.println("hue2 length=="+hue2.length);
				for (int i = 0; i < hue2.length; i++) {

					hue2[i] = hue2[i] + check;

				}
				mv.addObject("check", hue2);
			} else {
				String check = "예약불가능";
				System.out.println("hue2 length=="+hue2.length);
				for (int i = 0; i < hue2.length; i++) {

					hue2[i] = hue2[i] + check;
				}
				mv.addObject("check", hue2);
			}

		} else {

			if (pcountcheck > (pamountcheck * 0.1)) {

				String check = "예약가능";
				for (int i = 0; i < hue1.length; i++) {

					hue1[i] = hue1[i] + check;

				}
				mv.addObject("check", hue1);
			} else {
				String check = "예약불가능";
				for (int i = 0; i < hue1.length; i++) {

					hue1[i] = hue1[i] + check;

				}
				mv.addObject("check", hue1);

			}
		}
		mv.setViewName("members/possibletime");

		System.out.println("post방식");
		return mv;
	}

	String[] possibleTime2;
	int calpossibleTime;

	@RequestMapping(value = "/reserve2.do", method = RequestMethod.POST)
	public ModelAndView test3(String possibleTime, HttpServletRequest request) {

		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO) session.getAttribute("memcheck");
		System.out.println(memcheck);

		possibleTime2 = possibleTime.split(",");
		
		calpossibleTime = Integer
				.parseInt(possibleTime2[possibleTime2.length - 1].substring(0, 4));
		ModelAndView mv = new ModelAndView();
		System.out.println("p" + possibleTime);
		int rstarttime = calpossibleTime;

		int limit = 23;
		int num = rstarttime / 100;
		String kk=Integer.toString(rstarttime);
		
		int temp = limit - num;
		System.out.println("rstarttime=="+rstarttime);
		/*if(temp==0){
			temp=temp+1;
			
		}else{
			
			temp=temp;
			
		}*/
		String k2="30";
		System.out.println("kk=="+kk.substring(kk.length()-2, kk.length()));
		if(kk.substring(kk.length()-2, kk.length()).equals(k2)){
			temp=temp;
			
		}else{
			temp=temp+1;
			
		}
		
		
		int[] numArray = new int[temp];
		for (int a = 0; a < temp; a++) {

			numArray[a] = a + 1;

		}
		/*
		 * for(int i = 0; i<temp;i++){
		 * 
		 * if(numArray[i]==0){ numArray[i]=(Integer) null; }
		 * 
		 * }
		 */
		mv.addObject("numArray", numArray);

		mv.setViewName("members/selecttime");

		System.out.println("post방식");
		return mv;
	}

	ReservationDTO reserve = new ReservationDTO();
	MembersDTO members = new MembersDTO();
	ParkingDTO parking = new ParkingDTO();
	UsePointDTO usepoint = new UsePointDTO();
	int temp = 0;// pid의 값을 받아오기위한 temp
	int parkingMpoint = 0;
	int minusMpoint = 0;
	int resultMpoint = 0;
	int calselectTime;
	String[] calselectTime2;

	@RequestMapping(value = "/insert.do", method = RequestMethod.POST)
	public ModelAndView insert(String date, String possibleTime,
			String selectTime, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MembersDTO memcheck = (MembersDTO) session.getAttribute("memcheck");

		ModelAndView mv = new ModelAndView();
		System.out.println(memcheck);
		possibleTime = Integer.toString(calpossibleTime);
		System.out.println("possibleTime:" + possibleTime);
		System.out.println("mid=" + memcheck.getMid()); //

		try {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = sf.parse(date);
			System.out.println(d + "의" + possibleTime + "시까지" + selectTime
					+ "쓴다");

			String mid = memcheck.getMid();

			int testtimeint = 0;
			System.out.println(possibleTime);
			String testtime = possibleTime.substring(2);
			System.out.println("testtime=" + testtime);
			if (testtime.equals("30")) {
				testtimeint = Integer.parseInt(possibleTime) - 30;

			} else {

				testtimeint = Integer.parseInt(possibleTime) - 70;
			}
			// int testtimeint = Integer.parseInt(testtime);

			System.out.println("rstarttimeback=" + testtimeint);
			reserve.setRstarttimeback(String.valueOf(testtimeint));
			// reserve.setRstarttimeback(testtimeint);

			// selectTime.substring((selectTime.length()-1));
			// System.out.println(Integer.parseInt(selectTime));
			System.out.println("selectTime.length()=" + selectTime.length());
			System.out.println("selectTime===" + selectTime);
			calselectTime2 = selectTime.split(",");
			// System.out.println(selectTime.split(","));
			calselectTime = Integer
					.parseInt(calselectTime2[calselectTime2.length - 1]);
			// System.out.println("selectTime.split().length="+selectTime.split(",").length);

			// calselectTime=Integer.parseInt(selectTime.substring((selectTime.length()-1)));
			System.out.println("calselectTime==" + calselectTime);
			reserve.setMid(mid);
			reserve.setPid(pid);
			reserve.setRstart(d);
			reserve.setRend(null);
			reserve.setRstarttime(possibleTime);
			reserve.setRtime(calselectTime);
			reserve.setRextrafare(0);

			// pid의 갑을 가질 temp
			temp = reserve.getPid();
			parking = service.selectBypid(temp);
			parkingMpoint = parking.getPfare();
			System.out.println("사용할" + parkingMpoint);

			members = service.searchBymid(mid);
			System.out.println(members.getMpoint());

			mpoint = members.getMpoint();
			minusMpoint = parkingMpoint * calselectTime;
			System.out.println("차감액=" + minusMpoint);

			reserve.setRpoint(minusMpoint);
			resultMpoint = members.getMpoint() - minusMpoint;
			mv.addObject("mpoint", mpoint); // submit.jsp에 보여줄 애들
			mv.addObject("minusMpoint", minusMpoint);

			/*
			 * int ret = service.insertReservation(reserve);
			 */
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (mpoint < minusMpoint) {
			String msg = "포인트 부족으로 충전페이지로 이동합니다";
			mv.addObject("msg", msg);

		}

		mv.setViewName("members/submit");
		return mv;

	}

	@RequestMapping(value = "/insert1.do", method = RequestMethod.POST)
	public ModelAndView insertcom() {
		ModelAndView mv = new ModelAndView();
		if (mpoint > minusMpoint) {
			int ret = service.insertReservation(reserve);

			int countTemp = parking.getPcount() - 1;
			parking.setPcount(countTemp);
			int ret2 = pservice.updateParkingPcount(parking);
			members.setMpoint(resultMpoint);
			int ret3 = service.updateMembersMpoint(members);

			usepoint.setMid(members.getMid());
			usepoint.setPid(parking.getPid());
			usepoint.setUsepoint(minusMpoint);
			int ret4 = service.insertUsepoint(usepoint);

			System.out.println(ret + "건의 reservation insert성공");
			System.out.println(ret2 + "success updatePcout");
			System.out.println(ret3 + "success updateMpoint");
			System.out.println(ret4 + "success insert usepoint");

			ApplicationContext context = new ClassPathXmlApplicationContext(
					"Spring-Mail.xml");

			MailMail mm = (MailMail) context.getBean("mailMail");
			mm.sendMail("playingparking@gmail.com", members.getMemail(),
					"[노는주차장]" + members.getMid() + "님예약완료", parking.getPname()
							+ " 주차장 예약완료되었습니다:-)");

			mv.setViewName("redirect:/confirm.do");
			return mv;
		}

		else {

			mv.setViewName("redirect:/pointcheck.do");
			return mv;
		}

	}

}
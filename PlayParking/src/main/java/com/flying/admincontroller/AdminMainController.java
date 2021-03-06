package com.flying.admincontroller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flying.model.AdminDTO;
import com.flying.model.ChartDTO;
import com.flying.model.ChartServiceInterface;
import com.flying.model.ParkingDTO;
import com.flying.model.ParkingServiceInterface;
import com.flying.model.ReservationDTO;
import com.flying.model.ReservationServiceInterface;

@Controller
public class AdminMainController {

	@Autowired
	ParkingServiceInterface service;

	@Autowired
	ReservationServiceInterface rservice;

	@Autowired
	ChartServiceInterface chartservice;

	String thisMonth = null;

	@RequestMapping(value = "/adminmain.do", method = RequestMethod.GET)
	public ModelAndView adminMain(HttpServletRequest request,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		session = request.getSession();
		AdminDTO admincheck = (AdminDTO) session.getAttribute("admincheck");

		System.out.println("pid:" + admincheck);

		System.out.println(admincheck.getPid());
		ParkingDTO parking = service.selectBypid(admincheck.getPid());
		mv.addObject("parking", parking);// parking
		List<ParkingDTO> aroundpark = service.selectByAround(
				parking.getPlocation(), admincheck.getPid());
		mv.addObject("aroundpark", aroundpark);
		int sumfare = 0;
		int avg;
		for (ParkingDTO p : aroundpark) {
			sumfare += p.getPfare();
		}
		avg = sumfare / aroundpark.size();
		mv.addObject("avg", avg);

		// 주차장요금
		int parkingfare = parking.getPfare();
		List<ChartDTO> chartlist = chartservice.selectReserve(admincheck
				.getPid());

		List<Integer> summonthlyfare = new ArrayList<Integer>();

		List<String> monthlist = new ArrayList<String>();
		for (ChartDTO c : chartlist) {

			summonthlyfare.add(c.getSumrtime() * parkingfare);
			monthlist.add(c.getMonth());
		}

		String[][] charttable = new String[2][12];

		String graph = "[ ";
		for (int j = 0; j < 12; j++) {
			for (int s = 0; s < 2; s++) {
				if (s == 0) {
					if (j < monthlist.size()) {
						charttable[s][j] = monthlist.get(j);
						graph += "[" + charttable[s][j] + ",";
					} else {

						if (j + 1 >= 10) {
							charttable[s][j] = "2015" + (j + 1);
						} else {
							charttable[s][j] = "20150" + (j + 1);
						}
						graph += "[" + charttable[s][j] + ",";
					}
				} else {

					if (j < monthlist.size()) {
						charttable[s][j] = summonthlyfare.get(j).toString();
						graph += charttable[s][j] + "], ";
					} else {
						charttable[s][j] = "0";
						graph += charttable[s][j] + "], ";
					}
				}

			}

		}

		graph += "]";
		System.out.println(graph + "그래프!");

		mv.addObject("graph", graph);

		// 2014
		List<ChartDTO> beforechartlist = chartservice
				.selectBeforeReserve(admincheck.getPid());

		List<Integer> beforesummonthlyfare = new ArrayList<Integer>();
		//
		List<String> beforemonthlist = new ArrayList<String>();
		for (ChartDTO c : beforechartlist) {

			beforesummonthlyfare.add(c.getSumrtime() * parkingfare);
			beforemonthlist.add(c.getMonth());
		}

		String[][] beforecharttable = new String[2][12];

		String beforegraph = "[ ";
		for (int j = 0; j < 12; j++) {
			for (int s = 0; s < 2; s++) {
				if (s == 0) {
					if (j < beforemonthlist.size()) {
						beforecharttable[s][j] = beforemonthlist.get(j);
						beforegraph += "[" + beforecharttable[s][j] + ",";
					} else {
						if (j + 1 >= 10) {
							beforecharttable[s][j] = "2014" + (j - 1);
						} else {
							beforecharttable[s][j] = "20140" + (j + 1);
						}
						beforegraph += "[" + beforecharttable[s][j] + ",";
					}
				} else {

					if (j < beforemonthlist.size()) {
						beforecharttable[s][j] = beforesummonthlyfare.get(j)
								.toString();
						beforegraph += beforecharttable[s][j] + "], ";
					} else {
						beforecharttable[s][j] = "0";
						beforegraph += beforecharttable[s][j] + "], ";
					}
				}
			}
		}

		beforegraph += "]";
		System.out.println(beforegraph + "2014그래프!");

		mv.addObject("beforegraph", beforegraph);

		System.out.println(parking.getPcount());

		int todaycount = 0;
		List<ReservationDTO> reservelist = service
				.seachReservationBypid(admincheck.getPid());

		Date d1 = new Date();
		System.out.println("입력해주세요=" + d1.getHours() + "=" + d1.getMinutes());

		SimpleDateFormat sf = new SimpleDateFormat("HHmm");
		String test2 = sf.format(d1);
		System.out.println(test2);

		int i = reservelist.size();
		List<ReservationDTO> reservelist2 = new ArrayList<ReservationDTO>();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatForchart = new SimpleDateFormat("yyyy-MM");

		System.out.println("" + i);
		String today = format.format(d1);
		String reserveday = null;

		thisMonth = formatForchart.format(d1);
		System.out.println("" + thisMonth);

		for (int a = 0; a < i; a++) {

			reserveday = format.format(reservelist.get(a).getRstart());
			// System.out.println(reserveday);
			if (today.equals(reserveday)) {
				reservelist2.add(reservelist.get(a));
				// System.out.println("reserveday="+reserveday);
			}

		}

		String s1 = "900";
		String s2 = "930";

		for (int a = 0; a < reservelist2.size(); a++) {
			String temps = reservelist2.get(a).getRstarttimeback();
			temps = temps.trim();
			if (temps.equals(s1)) {
				temps = "0" + temps;
				reservelist2.get(a).setRstarttimeback(temps);
			} else if (temps.equals(s2)) {
				temps = "0" + temps;
				reservelist2.get(a).setRstarttimeback(temps);
			}
		}

		todaycount = reservelist2.size();

		int todaypoint = 0;

		for (int c = 0; c < reservelist2.size(); c++) {

			todaypoint = todaypoint
					+ (rservice.searchReservationByrid(
							reservelist2.get(c).getRid()).getRtime() * service
							.selectBypid(reservelist2.get(c).getPid())
							.getPfare());
		}

		mv.addObject("todaycount", todaycount);
		mv.addObject("reservelist", reservelist2);
		mv.addObject("todaypoint", todaypoint);
		System.out.println("오늘 포인트=" + todaycount);

		mv.setViewName("admin/admin_main");
		return mv;
	}

	@RequestMapping(value = "reservationupdate.do", method = RequestMethod.GET)
	public ModelAndView updateGet(int rid) {

		ModelAndView mv = new ModelAndView();
		System.out.println("rid=!=" + rid);
		ReservationDTO reserve1 = rservice.searchReservationByrid(rid);
		Date d = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("HHmm");
		// String test2 = sf.format(d);
		System.out.println("*******" + d.getHours());
		String temp1 = null;
		String temp2 = null;

		temp1 = temp1.valueOf(d.getHours());
		temp2 = temp2.valueOf(d.getMinutes());

		String tempresult = temp1 + temp2;

		String tempstring1 = reserve1.getRstarttime();// db

		if (tempresult.length() == 3) {
			String faketemp3 = tempresult.substring(0, 1);
			String faketemp4 = tempresult.substring(1, 3);
			tempresult = "0" + faketemp3 + faketemp4;

		} else if (tempresult.length() == 2) {
			String faketemp3 = tempresult.substring(0, 1);
			String faketemp4 = tempresult.substring(1, 2);
			tempresult = "0" + faketemp3 + "0" + faketemp4;

		}

		int temp3 = Integer.parseInt(tempresult.substring(0, 2));
		int temp4 = Integer.parseInt(tempresult.substring(2, 4));
		int temp5 = Integer.parseInt(reserve1.getRstarttime().substring(0, 2));
		int temp6 = Integer.parseInt(reserve1.getRstarttime().substring(2, 4));
		int rstarttime = Integer.parseInt(tempstring1);
		int endtime = Integer.parseInt(tempresult);//
		temp5 = temp5 + reserve1.getRtime();
		int cnth = 0;// cnth
		int cntm = 0;// cntm
		int cal = 0;
		if (endtime > rstarttime) {
			cnth = temp3 - temp5;
			cntm = temp4 - temp6;

		}

		if (cntm > 0) {
			cal = ((cnth + 1) * service.selectBypid(reserve1.getPid())
					.getPlatefare());
		} else {
			cal = (cnth * service.selectBypid(reserve1.getPid()).getPlatefare());
		}
		mv.addObject("naga", cal);
		mv.addObject("rid", rid);
		mv.setViewName("admin/chulcha");
		return mv;
	}

	@RequestMapping(value = "reservationupdate1.do", method = RequestMethod.POST)
	public ModelAndView updatePost(int rid, int naga) {
		ModelAndView mv = new ModelAndView();

		System.out.println("rid===========" + rid);
		ReservationDTO reserve = rservice.searchReservationByrid(rid);

		reserve.setRextrafare(naga);

		ParkingDTO parking = service.selectBypid(rservice
				.searchReservationByrid(rid).getPid());
		int countTemp = parking.getPcount() + 1;
		parking.setPcount(countTemp);
		int ret = rservice.updateReservationEndByrid(reserve);
		int ret2 = service.updateParkingPcount(parking);
		System.out.println(" reserve===" + reserve);
		System.out.println(ret + " End ");
		System.out.println(ret2 + "pcount");
		mv.setViewName("redirect:/adminmain.do");
		return mv;

	}
}

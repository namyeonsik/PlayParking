package com.flying.membercontroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
   int pid=0;
   
   @RequestMapping(value = "/reserve.do", method = RequestMethod.POST)
   public ModelAndView test(HttpSession session, HttpServletRequest request) {
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("memcheck")==null){
         mv.setViewName("members/member_login");
         return mv;
      }else{
         pid = Integer.parseInt(request.getParameter("pid"));      
         System.out.println("pid��:"+pid);
         
         System.out.println("get���****");
         mv.setViewName("members/reserve");
         return mv;
      }      
   }

   @RequestMapping(value = "/reserve1.do", method = RequestMethod.POST)
   public ModelAndView test2() {
      // ���½ð��� ��ȸ�ؼ� data�� ����
      // ������ pid���� �޾ƿ;��Ѵ�.      
      
      
      ModelAndView mv = new ModelAndView();
      int pcountcheck = pservice.checkCount(pid);
      int pamountcheck = pservice.checkAmount(pid);

      if (pcountcheck > (pamountcheck * 0.1)) {

         String check = "���డ��";
         mv.addObject("check", check);

      } else {
         String check = "����Ұ���";
         mv.addObject("check", check);

      }

      mv.setViewName("members/possibletime");

      System.out.println("post���");
      return mv;
   }

   @RequestMapping(value = "/reserve2.do", method = RequestMethod.POST)
   public ModelAndView test3(String possibleTime,HttpServletRequest request) {
      
      HttpSession session = request.getSession();
      MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
      System.out.println(memcheck);
      
      // ���½ð��� ��ȸ�ؼ� data�� ����
      ModelAndView mv = new ModelAndView();
      System.out.println("p"+possibleTime);
      int rstarttime = Integer.parseInt(possibleTime);

      int limit = 23;// ����9�ÿ� �����ϸ� �ִ� 14�ð����� ����
      int num = rstarttime / 100; // �������డ�ɽð� ���� ���� num
      int temp = limit-num;
      int[] numArray = new int[temp];
      
      for (int a = 0; a <temp; a++) {

         numArray[a] = a+1;
               
      }
      /*for(int i = 0; i<temp;i++){
         
         if(numArray[i]==0){
            numArray[i]=(Integer) null;
         }
         
      }*/
      mv.addObject("numArray", numArray);

      mv.setViewName("members/selecttime");

      System.out.println("post���");
      return mv;
   }
   ReservationDTO reserve  = new ReservationDTO();
   MembersDTO members = new MembersDTO();
   ParkingDTO parking = new ParkingDTO();
   UsePointDTO usepoint = new UsePointDTO();
   int temp=0;//pid���� �޾ƿ��º��� temp
   int parkingMpoint=0;
   int minusMpoint=0;
   int resultMpoint=0;
   @RequestMapping(value="/insert.do", method=RequestMethod.POST)
   public ModelAndView insert(String date, String possibleTime, String selectTime, HttpServletRequest request){
      HttpSession session = request.getSession();
      MembersDTO memcheck = (MembersDTO)session.getAttribute("memcheck");
      
      ModelAndView mv = new ModelAndView();
      System.out.println(memcheck);
       possibleTime = request.getParameter("possibleTime");
      System.out.println("possibleTime:" + possibleTime);
      System.out.println("���̵��="+memcheck.getMid()); //���⼭ ����������.
      
      try {
         SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
         Date d = sf.parse(date);
         System.out.println(d+"��"+possibleTime+"��"+selectTime+"�ð�");
         
         String mid = memcheck.getMid();
         
         
         System.out.println(possibleTime);
         
         // ReservationDTO�� ���� �Է����ִ� �κ�
         reserve.setMid(mid);  // request���� �޾ƿ;��Ѵ�.
         reserve.setPid(pid);   //request���� �޾ƿ;��Ѵ�.
         reserve.setRstart(d);
         reserve.setRend(null);
         reserve.setRstarttime(possibleTime);  //���� ��¥ ������ �����ؼ� ����Ѵ�.
         reserve.setRtime(Integer.parseInt(selectTime));
         reserve.setRextrafare(0);
         
         
         //pid���� �޾ƿͼ� �־��ִ� �κ�
         temp = reserve.getPid();
         parking = service.selectBypid(temp);
         parkingMpoint = parking.getPfare(); //�������� ��� ������ �޾ƿ´�.
         System.out.println("������ �⺻���= "+parkingMpoint);
         
         //members�� ���̵��� �޾Ƽ� Mpoint���� �޾ƿ��� �κ�
         members = service.searchBymid(mid);
         System.out.println(members.getMpoint());
         
         
         int mpoint = members.getMpoint();//members�� mpoint���� ��������
         minusMpoint = parkingMpoint*Integer.parseInt(selectTime);
         
         resultMpoint = members.getMpoint()-minusMpoint;
         mv.addObject("mpoint", mpoint); // submit.jsp�� ���� �־��ش�.
         mv.addObject("minusMpoint",minusMpoint);
         
         
         
         //rid�� db���� sequence�� ���� ����Ѵ�.
         //reserve.setRid(1); //Test������ �켱 1�� �ົ�� 
      /*int ret = service.insertReservation(reserve);
         System.out.println(ret+"�� �Է� �޾ҽ��ϴ�.");*/
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      //mv.setViewName("redirect:members/member_main");
//      return mv;
      mv.setViewName("members/submit");
      return mv;
      
   }
   
   
   @RequestMapping(value="/insert1.do", method=RequestMethod.POST)
   public String insertcom(){
      int ret = service.insertReservation(reserve);
      
      int countTemp = parking.getPcount()-1;
      parking.setPcount(countTemp);
      int ret2 = pservice.updateParkingPcount(parking);
      members.setMpoint(resultMpoint);
      int ret3 = service.updateMembersMpoint(members);
      
      usepoint.setMid(members.getMid());
      usepoint.setPid(parking.getPid());
      usepoint.setUsepoint(minusMpoint);
      int ret4 =service.insertUsepoint(usepoint);
      
      System.out.println(ret+"�� �Է� �޾ҽ��ϴ�.");
      System.out.println(ret2+"���� pcount�����߽��ϴ�.");
      System.out.println(ret3+"���� mpoint�����߽��ϴ�.");
      System.out.println(ret4+"���� usepoint�����߽��ϴ�.");
      
    //����ϷṮ�ڹ߼� ����
      ApplicationContext context = 
                new ClassPathXmlApplicationContext("Spring-Mail.xml");
    
          MailMail mm = (MailMail) context.getBean("mailMail");
           mm.sendMail("playingparking@gmail.com",
                "dustlr92@gmail.com",
                members.getMid()+"�� ����Ϸ�", 
                "Testing only \n\n Hello Spring Email Sender");
       //����ϷṮ�ڹ߼� ��
      
      return "members/confirm";
   }
   
}

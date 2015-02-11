<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
  
<select name="possibleTime" id="possibleTime" multiple="multiple">
  <option value="930">09:00~09:30 ${check}</option>
  <option value="1000">09:30~10:00 ${check}</option>
  <option value="1030">10:00~10:30 ${check}</option>
  <option value="1100">10:30~11:00 ${check}</option>
  <option value="1100">11:00~11:30 ${check}</option>
  <option value="1200">11:30~12:00 ${check}</option>
  <option value="1230">12:00~12:30 ${check}</option>
  <option value="1300">12:30~13:00 ${check}</option>
  <option value="1330">13:00~13:30 ${check}</option>
  <option value="1400">13:30~14:00 ${check}</option>
  <option value="1430">14:00~14:30 ${check}</option>
  <option value="1500">14:30~15:00 ${check}</option>
  <option value="1530">15:00~15:30 ${check}</option>
  <option value="1600">15:30~16:00 ${check}</option>
  <option value="1630">16:00~16:30 ${check}</option>
  <option value="1700">16:30~17:00 ${check}</option>
  <option value="1730">17:00~17:30 ${check}</option>
  <option value="1800">17:30~18:00 ${check}</option>
  <option value="1830">18:00~18:30 ${check}</option>
  <option value="1900">18:30~19:00 ${check}</option>
  <option value="1930">19:00~19:30 ${check}</option>
  <option value="2000">19:30~20:00 ${check}</option>
  <option value="2030">20:00~20:30 ${check}</option>
  <option value="2100">20:30~21:00 ${check}</option>
  <option value="2130">21:00~21:30 ${check}</option>
  <option value="2200">21:30~22:00 ${check}</option>
  <option value="2230">22:00~22:30 ${check}</option>
  <option value="2300">22:30~23:00 ${check}</option>
  
   
</select>
<br>
<input type = "button" value = "선택" onclick="getsDate()"/>
<input type = "reset" value = "reset"/><br><br>
  
                 
        
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
  
<select name="possibleTime" id="possibleTime" multiple="multiple">
  <option value="900">09:00~09:30 ${check}</option>
  <option value="930">09:30~10:00 ${check}</option>
  <option value="1000">10:00~10:30 ${check}</option>
  <option value="1030">10:30~11:00 ${check}</option>
  <option value="1100">11:00~11:30 ${check}</option>
  <option value="1130">11:30~12:00 ${check}</option>
  <option value="1200">12:00~12:30 ${check}</option>
  <option value="1230">12:30~13:00 ${check}</option>
  <option value="1300">13:00~13:30 ${check}</option>
  <option value="1330">13:30~14:00 ${check}</option>
  <option value="1400">14:00~14:30 ${check}</option>
  <option value="1430">14:30~15:00 ${check}</option>
  <option value="1500">15:00~15:30 ${check}</option>
  <option value="1530">15:30~16:00 ${check}</option>
   
</select>

<input type = "button" value = "선택" onclick="getsDate()"/>
<input type = "reset" value = "reset"/><br><br>
  
                 
        
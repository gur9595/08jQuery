<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//폼값을 받음
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	
	//jsp에소 JSON을 사용하기 위해 확장 정리라이브러리 설치후 객체를 생성한다
	JSONObject jsonObj= new JSONObject();
	
	if(user_id.equals("kosmo")&&user_pw.equals("1234")){
		/*
		
		JSONObject 객체를 통해 key value를 입력한다
		사용법은 Map컬렉션되 공일하다 아래와 같이 하면 JSON객체가 생성된다*/
		jsonObj.put("user_id", user_id);
		jsonObj.put("user_name", "홍길동");
		jsonObj.put("user_pw", user_pw);
		jsonObj.put("result", 1);
		
	}else{
		//아이디 패스워드가 일치하지 않는경우   result를 0으로 반ㄹㄴ
		jsonObj.put("result", 0);
	}
	//JSON객체를 String 타입으로 형변환후 화면에 내영을 출력하나
	String jsonTxt = jsonObj.toJSONString();
	out.println(jsonTxt);
%>
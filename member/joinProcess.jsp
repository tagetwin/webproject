<%@page import="com.exam.dao.DBConn"%>
<%@page import="com.exam.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스크립트릿(scriptlet) - 자바코드 영역
	//post 요청일때 한글 처리
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");

	Member member = new Member();
	member.setName(name);
	member.setTel(tel);
	member.setGender(gender);
	
	DBConn dbConn = DBConn.getInstance();
	dbConn.insert(member);

%>

<script>
	alert('회원가입되었습니다.');
	location = '/';
</script>

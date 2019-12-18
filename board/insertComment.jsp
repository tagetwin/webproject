<%@page import="com.exam.vo.CommentVo"%>
<%@page import="com.exam.dao.CommentDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post 요청데이터 한글처리
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	// DB작업
	CommentDao commentDao = CommentDao.getInstance();
	
	int cnum = commentDao.nextCommentNum(1); // 1번 게시판글 기준으로 다음 댓글번호 구하기
	
	CommentVo commentVo = new CommentVo();
	commentVo.setBnum(1); // 1번 게시판글 기준으로 달리는 댓글
	commentVo.setCnum(cnum);
	commentVo.setName(name);
	commentVo.setContent(content);
	
	int rowCount = commentDao.insert(commentVo);
	out.println(rowCount);
%>





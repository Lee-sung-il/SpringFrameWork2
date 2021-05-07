<%@ page import="com.ync.biz.board.impl.BoardDAO"%>
<%@ page import="com.ync.biz.board.BoardVO" %>
<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
	//1. 사용자 입력 정보 추출
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	//2. DB 연동 처리
	BoardVO vo = new BoardVO();
	vo.setTitle(title);
	vo.setWriter(writer);
	vo.setContent(content);
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.insertBoard(vo);
	
	//3. 화면 네비게이션
	response.sendRedirect("getBoardList.jsp");
%>
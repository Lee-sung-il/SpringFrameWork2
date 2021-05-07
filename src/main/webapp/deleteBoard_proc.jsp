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
	String seq = request.getParameter("seq");
	
	//2. DB 연동 처리
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.deleteBoard(vo);
	
	//3. 화면 네비게이션
	response.sendRedirect("getBoardList.jsp");
%>
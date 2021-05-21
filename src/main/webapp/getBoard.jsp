<%@ page import="com.ync.biz.board.BoardVO" %>
<%@ page import="com.ync.biz.board.impl.BoardDAO" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//    BoardVO board = (BoardVO) session.getAttribute("board");
//    String seq = request.getParameter("seq");
//
//    BoardVO vo = new BoardVO();
//    vo.setSeq(Integer.parseInt(seq));
//    BoardDAO boardDAO = new BoardDAO();
//    BoardVO board = boardDAO.getBoard(vo);
%>
<html>
<head>
    <title>글 상세</title>
</head>
<body>
    <center>
        <h1>글 상세</h1>
        <a href="Logout_proc.jsp"> Log-out </a>
        <form action="updateBoard.do" method="post">
            <input type="hidden" name="seq" value="${board.seq}">
            <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td bgcolor="orange" width="70">제목</td>
                    <td align="left">
                        <input type="text" name="title" value="${board.title}">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="orange">작성자</td>
                    <td align="left">
                       ${board.writer}
                    </td>
                </tr>
                <tr>
                    <td bgcolor="orange">내용</td>
                    <td align="left">
                        <textarea name="content" cols="40" rows="10">
                            ${board.content}
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="orange">등록일</td>
                    <td align="left">
                      ${board.regDate}
                    </td>
                </tr>
                <tr>
                    <td bgcolor="orange" width="70">조회수</td>
                    <td align="left">
                       ${board.cnt}
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="글 수정">
                    </td>
                </tr>

            </table>
        </form>
        <hr>
        <a href="insertBoard.jsp">글등록</a> &nbsp;&nbsp;&nbsp;
        <a href="deleteBoard.do?seq=${board.seq}">글 삭제</a>&nbsp;&nbsp;&nbsp;
        <a href="getBoardList.do">글 목록</a>
    </center>
</body>
</html>
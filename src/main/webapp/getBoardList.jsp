<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false" contentType="text/html; charset=UTF-8" %>

<%

    //	List<BoardVO> boardList = (List) session.getAttribute("boardList");
    // 1. 사용자 입력 정보 추출 (검색 기능은 나중에 구현)
    // 2. DB 연동 처리
//	BoardVO vo = new BoardVO();
//	BoardDAO boardDAO = new BoardDAO();
//	List<BoardVO> boardList = boardDAO.getBoardList(vo);

    // 3. 응답 화면 구성
%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="message.board.list.mainTitle"/></title>
</head>
<body>
<center>
    <h1><spring:message code="message.board.list.mainTitle"/></h1>
    <h3>
        ${userName }
        <spring:message code="message.board.list.welcomeMsg"/> <a href="logout.do" class="btn btn-info">Log-out</a>
    </h3>
    <!-- 검색 시작 -->
    <form action="getBoardList.do" method="post">
        <table class="table-responsive table-condensed">
            <tr>
                <td align="right"><select name="searchCondition">
                    <c:forEach items="${conditionMap }" var="option">
                        <option value="${option.value}">${option.key}</option>
                    </c:forEach>
                </select><input name="searchKeyword" type="text"/>
                    <input type="submit" value="<spring:message code="message.board.list.search.condition.btn"/>"
                           class="btn btn-info btn-xs"/></td>
            </tr>
        </table>
    </form>
    <!-- 검색 종료 -->
    <table border="0" cellpadding="0" cellspacing="0" width="700" class="table table-striped table-hover">
        <tr>
            <th width="100" class="bg-info"><spring:message code="message.board.list.table.head.seq"/></th>
            <th width="200" class="bg-info"><spring:message code="message.board.list.table.head.title"/></th>
            <th width="150" class="bg-info"><spring:message code="message.board.list.table.head.writer"/></th>
            <th width="150" class="bg-info"><spring:message code="message.board.list.table.head.regDate"/></th>
            <th width="100" class="bg-info"><spring:message code="message.board.list.table.head.cnt"/></th>
        </tr>
        <%--			<%--%>
        <%--				for (BoardVO board : boardList) {--%>
        <%--			%>--%>
        <c:forEach items="${boardList}" var="board">
            <tr>
                <td>${board.seq}</td>
                <td align="left"><a href="getBoard.do?seq=${board.seq}">
                        ${board.title}</a></td>
                <td>${board.writer}</td>
                <td>${board.regDate}</td>
                <td>${board.cnt}</td>
            </tr>
        </c:forEach>
        <%--			<%--%>
        <%--				}--%>
        <%--			%>--%>
    </table>
    <br> <a href="insertBoard.jsp" class="btn btn-danger"><spring:message code="message.board.list.link.insertBoard"/> </a>
</center>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
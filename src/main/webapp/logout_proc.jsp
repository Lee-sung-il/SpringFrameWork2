<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1.브라우저와 연결된 세션 객체를 강제로 종료한다.
    session.invalidate();
    // 2. 세션 종료 후, 메인 화면으로 이동한다.
    response.sendRedirect("login.jsp");
%>
<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/06/07
  Time: 2:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>기본 에러 화면</title>
</head>
<body bgcolor="#ffffff" text="#000000">
<%--타이틀 시작--%>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" bgcolor="orange">
            <b>기본 에러 화면입니다.</b>
        </td>
    </tr>
</table>
<br>
<%--에러 메시지--%>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
 <tr>
     <td align="center">
         <br><br><br><br><br>
         Message: ${exception.message}
         <br><br><br><br><br>
     </td>
 </tr>
</table>
</body>
</html>

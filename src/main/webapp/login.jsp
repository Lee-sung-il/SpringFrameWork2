<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="message.user.login.title"/></title>
</head>
<body>
<center>
    <h1><spring:message code="message.user.login.title"/></h1>
    <a href="login.do?lang=en" class="btn btn-info btn-xs"><spring:message code="message.user.login.language.en"/> </a> &nbsp;&nbsp;
    <a href="login.do?lang=ko" class="btn btn-info btn-xs"><spring:message code="message.user.login.language.ko"/> </a>
    <hr>
    <form action="login.do" method="post">
        <table class="table-responsive table-condensed">
            <tr>
                <td><spring:message code="message.user.login.id"/></td>
                <td><input type="text" name="id" value="${userVO.id}" class="form-control"/></td>
            </tr>
            <tr>
                <td><spring:message code="message.user.login.password"/></td>
                <td><input type="password" name="password" value="${userVO.password }" class="form-control"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" class="btn btn-primary"
                                                      value="<spring:message code="message.user.login.loginBtn"/>"/>
                </td>
            </tr>
        </table>
    </form>
    <hr>
</center>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
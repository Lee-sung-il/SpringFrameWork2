<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP 게시판 웹 사이트</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapse" data-toggle="collapse"
        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">JSP 게시판 웹사이트</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"
            role="button" aria-haspopup="true" aria-expanded="false">메뉴 <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li class="active"><a href="login.do">로그인</a></li>
                <li><a href="getBoardList.do">글 목록 바로가기</a></li>
                <li><a href="dataTransform.do">글 목록 변환 바로가기</a></li>
            </ul>
        </ul>
    </div>
</nav>

<%--<center>--%>
<%--    <h1>게시판 프로그램</h1>--%>
<%--    <hr>--%>
<%--    <a href="login.do" class="text-danger">로그인</a>--%>
<%--    <a href="getBoardList.do" class="text-danger">글 목록 바로가기</a>--%>
<%--    <a href="dataTransform.do" class="text-danger">글 목록 변환 바로가기</a>--%>
<%--    <hr>--%>
<%--</center>--%>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
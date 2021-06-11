<%--
  Created by IntelliJ IDEA.
  User: iseong-il
  Date: 2021/04/30
  Time: 11:34 오후
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>새 글 등록</title>
</head>
<body>
<center>
    <h1>글 등록</h1>
    <a href="logout_proc.jsp" class="btn btn-info">Log-out</a>
    <hr>
    <form action="insertBoard.do" method="post" enctype="multipart/form-data">
        <table class="table table-bordered">
            <tr>
                <td class="bg-info" width="70">제목</td>
                <td align="left"><input type="text" name="title" class="form-control"/></td>
            </tr>
            <tr>
                <td class="bg-info">작성자</td>
                <td align="left"><input type="text" name="writer" size="10" class="form-control"/></td>
            </tr>
            <tr>
                <td class="bg-info">내용</td>
                <td align="left"><textarea name="content" cols="40" rows="10" class="form-control"></textarea></td>
            </tr>
            <tr>
                <td class="bg-info">업로드</td>
                <td align="left"><input type="file" name="uploadFile"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="새 글 등록" class="btn btn-info"/></td>
            </tr>
        </table>
    </form>
    <hr>
    <a href="/getBoardList.do" class="btn btn-info">글 목록 가기</a>
</center>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
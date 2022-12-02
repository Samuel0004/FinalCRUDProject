<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        #list td{
        }


    </style>
</head>
<body>

<h1>새 글쓰기</h1>
<form action="addok" method="post">
<table id="list">
    <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>이메일</td><td><input type="text" name="email"/></td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>



</body>
</html>
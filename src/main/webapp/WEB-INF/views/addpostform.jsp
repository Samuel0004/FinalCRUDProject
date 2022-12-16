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
    <tr><td>카테고리</td><td><input type="text" name="Category"/></td></tr>
    <tr><td>게임</td><td><input type="text" name="GameName"/></td></tr>
    <tr><td>평점</td><td><input type="" name="Rating"/></td></tr>
    <tr><td>이메일</td><td><input type="text" name="RecruitEmail"/></td></tr>
    <tr><td>모집인원수</td><td><input type="" name="RecruitNum"/></td></tr>
    <tr><td>개발사</td><td><input type="text" name="GamePublisher"/></td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="Content"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>



</body>
</html>
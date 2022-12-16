<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Form</title>
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

<h1>개시물 더보기</h1>
<form:form modelAttribute="gameVO" method="GET">
  <form:hidden path="seq"/>
  <table id="show">
    <tr><td>카테고리:</td><td>${gameVO.category}</td></tr>
    <tr><td>게임:</td><td>${gameVO.gameName}</td></tr>
    <tr><td>평점:</td><td>${gameVO.rating}</td></tr>
    <tr><td>이메일:</td><td>${gameVO.recruitEmail}</td></tr>
    <tr><td>등록일:</td><td>${gameVO.regDate}</td></tr>
    <tr><td>모집인원수:</td><td>${gameVO.recruitNum}</td></tr>
    <tr><td>개발자:</td><td>${gameVO.gamePublisher}</td></tr>
    <tr><td>내용:</td><td>${gameVO.content}</td></tr>
  </table>
  <input type="button" value="취소하기" onclick="history.back()">
</form:form>


</body>
</html>


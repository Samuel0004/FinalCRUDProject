<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

</head>
<body>


<h1>개시물 수정</h1>
<form commandName="boardVO" method="POST" action="../editok">
	<form path="seq"/>
	<table id="edit">
		<tr><td>카테고리</td><td><input path="category"/></td></tr>
		<tr><td>제목</td><td><input path="title"/></td></tr>
		<tr><td>글쓴이</td><td><input path="writer"/></td></tr>
		<tr><td>이메일</td><td><input path="email"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" path="content"></textarea></td></tr>
	</table>
	<input type="submit" value="수정하기">
	<input type="button" value="취소하기" onclick="history.back()">
</form>

</body>
</html>
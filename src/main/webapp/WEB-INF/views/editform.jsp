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

<h1>개시물 수정</h1>
<form:form modelAttribute="gameVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>카테고리</td><td><form:input path="category"/></td></tr>
		<tr><td>게임</td><td><form:input path="gameName"/></td></tr>
		<tr><td>평점</td><td><form:input path="rating"/></td></tr>
		<tr><td>이메일</td><td><form:input path="recruitEmail"/></td></tr>
		<tr><td>모집인원수</td><td><form:input path="recruitNum"/></td></tr>
		<tr><td>개발자</td><td><form:input path="gamePublisher"/></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
	</table>
	<input type="submit" value="수정하기">
	<input type="button" value="취소하기" onclick="history.back()">
</form:form>

</body>
</html>
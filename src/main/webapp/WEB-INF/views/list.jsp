<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deletepost.jsp?id=' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<p1>관리자 님 안녕하세요~</p1><a href="../login/logout">logout</a>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>카테고리</th>
        <th>게임</th>
        <th>평점</th>
        <th>이메일</th>
        <th>등록일</th>
        <th>더보기</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.gameName}</td>
            <td>${u.rating}</td>
            <td>${u.recruitEmail}</td>
            <td>${u.regDate}</td>
            <c:if test="true">
                <td><a href="showitem/${u.seq}">더보기</a></td>
                <td><a href="editform/${u.seq}">글수정</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
            </c:if>
        </tr>
    </c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니다?");
        if(a) location.href='deleteok/' +id;
    }
</script>
</html>
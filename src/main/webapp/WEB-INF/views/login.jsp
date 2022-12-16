<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /*img, label { display:inline-block;}*/
        /*label{ width:130px}*/
        /*button{ background-color:blue; color:white;font-size:15px}*/
        .form-signin {
            max-width: 330px;
            padding: 15px;
        }
        #floatingInput{
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        #floatingPassword{
             border-top-right-radius: 0;
             border-top-left-radius: 0;
         }
        label{
            color: black;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body class="text-center text-bg-dark">
<%--<div style='width:100%;text-align:center;padding-top:100px'>--%>
<%--    <div class="w-">--%>
<%--        <img src='../img/snowman.jpg' height="250">--%>
<%--    </div>--%>
<%--    <form method="post" action="loginOk">--%>
<%--        <div><label>User ID: </label><input type='text' name='userid' /></div>--%>
<%--        <div><label>Password: </label>--%>
<%--            <input type='password' name='password' /></div>--%>
<%--        <button type='submit'>login</button>--%>
<%--    </form>--%>
<%--</div>--%>
<main class="form-signin w-100 m-auto">
    <form method="post" action="loginOk">
        <img class="mb-4 w-100" src="../img/game.png" alt="">
        <h1 class="h3 mb-3 fw-normal">로그인</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInput" name="userid" placeholder="아이디">
            <label for="floatingInput">아이디</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="비밀번호">
            <label for="floatingPassword">비밀번호</label>
        </div>

        <div class="checkbox mb-3"></div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
        <p class="mt-5 mb-3 text-muted">&copy; 21900310 21900286</p>
    </form>
</main>
</body>
</html>
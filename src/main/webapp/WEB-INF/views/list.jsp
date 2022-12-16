<%@ page import="com.example.spring2.user.UserVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<%
    Random rd = new Random();
    ArrayList<String> rando = new ArrayList<>();
    rando.add("<i class=\"fa-solid fa-gamepad\"></i>");
    rando.add("<i class=\"fa-solid fa-dice\"></i>");
    rando.add("<i class=\"fa-solid fa-puzzle-piece\"></i>");
    rando.add("<i class=\"fa-solid fa-chess-knight\"></i>");
    rando.add("<i class=\"fa-solid fa-shield-halved\"></i>");
    rando.add("<i class=\"fa-solid fa-hat-wizard\"></i>");
    rando.add("<i class=\"fa-solid fa-table-tennis-paddle-ball\"></i>");
    rando.add("<i class=\"fa-solid fa-trophy\"></i>");
    rando.add("<i class=\"fa-solid fa-vr-cardboard\"></i>");
    rando.add("<i class=\"fa-solid fa-ghost\"></i>");
    rando.add("<i class=\"fa-solid fa-fire-flame-curved\"></i>");
    rando.add("<i class=\"fa-solid fa-ring\"></i>");
    rando.add("<i class=\"fa-solid fa-gavel\"></i>");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>같이게임</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/e38ef3acc1.js" crossorigin="anonymous"></script>
    <style>
        .card-body{
            cursor: pointer;
        }
        .card-header{
            cursor: pointer;
        }
        .card-info{
            height: 1.5rem;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <script>
        let changeString = "./deleteok/";
        function setId(val){
            changeString="./deleteok/"+val.toString();
        }
    </script>
</head>
<body>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="../game/list" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                <h3 class="me-3">같이 게임?</h3>
                <img src="../img/game.png" class="bi me-2" width="40" height="40"/>
            </a>

            <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"></div>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
<%--                <input type="search" class="form-control" placeholder="검색...">--%>
            </form>

            <div class="text-end">
                <a href="#profileOffcanvas" data-bs-toggle="offcanvas" role="button">
                    <i class="bi bi-person-circle" style="font-size: 30px; color: black"></i>
                </a>
            </div>
        </div>
    </div>
</header>
<div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
        <c:forEach items="${list}" var="u">
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-header" onclick="location.href='./showitem/${u.seq}'">
                        <h4 class="card-title"><%=rando.get(rd.nextInt(rando.size()))%> ${u.gameName}</h4>
                    </div>
                    <div class="card-body" onclick="location.href='./showitem/${u.seq}'">
                        <p class="card-text text-muted mb-0 card-info"><i class="bi bi-tag"></i> ${u.category}</p>
                        <p class="card-text text-muted mb-0 card-info"><i class="bi bi bi-star-fill" style="color: #ffc552"></i> ${u.rating}</p>
                        <p class="card-text text-muted mb-0 card-info"><i class="bi bi-people"></i> ${u.recruitNum}명</p>
                        <p class="card-text text-muted mb-0 card-info"><i class="bi bi-envelope-at"></i> ${u.recruitEmail}</p>
                    </div>
                    <div class="card-footer">
                        <c:if test='<%=((UserVO)request.getSession().getAttribute("login")).getUserid().equals("admin")%>'>
                            <div class="d-flex justify-content-end">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-secondary bi bi-pencil" onclick="location.href='./editform/${u.seq}'"></button>
                                    <button type="button" class="btn btn-sm btn-danger bi bi-trash" data-bs-toggle="modal" data-bs-target="#deleteConfirm" onclick="setId(${u.seq})"></button>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<br/>
<div class="ps-3 pe-3 justify-content-end d-flex">
    <button type="button" class="btn btn-primary bi bi-plus" onclick="location.href='add'">새글쓰기</button>
</div>
<div class="offcanvas offcanvas-end" id="profileOffcanvas">
    <div class="offcanvas-header">
        <div class="col d-flex align-items-start">
            <div class="d-inline-flex pe-3">
                <i class="bi bi-person-circle" style="font-size: 32px"></i>
            </div>
            <div>
                <h3><%=((UserVO) request.getSession().getAttribute("login")).getUsername()%>님</h3>
                <p>환영합니다</p>
            </div>
        </div>
    </div>
    <div class="offcanvas-body">
        <a href="../login/logout"><i class="bi bi-box-arrow-right"></i> 로그아웃</a>
    </div>
</div>
<div class="modal fade" id="deleteConfirm" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">삭제 확인</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                정말로 삭제하시겠습니까?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-danger" onclick="location.href=changeString">확인</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
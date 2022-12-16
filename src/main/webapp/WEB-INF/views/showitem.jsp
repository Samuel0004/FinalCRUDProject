<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <style>
        #content{
            height: 200px;
            overflow: auto;
        }
    </style>
</head>
<body>
<div id="main" class="col col-12 col-md-8 col-lg-6 mx-auto p-3">
  <div style="margin-top:50px"></div>
    <h1>게시물 자세히 보기</h1>
  <hr>
    <div class="row">
        <div class="col d-flex align-items-start">
            <div class="d-inline-flex pe-3">
                <h2><i class="bi bi-controller"></i></h2>
            </div>
            <div>
                <h2>${gameVO.gameName}</h2>
                <h6><i class="bi bi-tag"></i> ${gameVO.category}</h6>
                <h6><i class="bi bi-code-slash"></i> ${gameVO.gamePublisher}</h6>
                <h6><i class="bi bi bi-star-fill" style="color: #ffc552"></i> ${gameVO.rating}</h6>
            </div>
        </div>
        <div class="col d-flex align-items-start">
            <div class="d-inline-flex pe-3">
                <h2><i class="bi bi-person-circle"></i></h2>
            </div>
            <div>
                <h2>등록자 정보</h2>
                <h6><i class="bi bi-envelope-at"></i> ${gameVO.recruitEmail}</h6>
                <h6><i class="bi bi-people"></i> ${gameVO.recruitNum}명</h6>
                <h6><i class="bi bi-calendar-date"></i> ${gameVO.prettyDate}</h6>
            </div>
        </div>
    </div>
    <div class="ms-2 d-inline ps-2 pe-2" style="position: relative; top:12px; background-color: white">내용</div>
    <div id="content" class="form-control col col-12">
        ${gameVO.content}
    </div>
</div>
</body>
</html>


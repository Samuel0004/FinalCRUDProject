<%--
  Created by IntelliJ IDEA.
  User: daiks
  Date: 2022-12-17
  Time: 오전 1:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<html>
<head>
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <style>
        textarea{
            height: 200px;
            resize: none;
        }
        label{
            margin-bottom: 5px;
        }
        form div{
            margin-bottom: 20px;
        }
        .form-invalid{
            color: #ff6666;
            margin-top: 5px ;
            font-size: x-small;
            display: none;
        }
    </style>
    <script>
        let userList = [];
        <c:forEach var="a" items="${userList}">userList.push('${a}');</c:forEach>

        function beforeSubmit(){
            let elements = document.getElementsByTagName("input");

            if(userList.includes(elements[1].value)){
                elements[1].setCustomValidity("존재하는 아이디입니다.");
            }else{
                elements[1].setCustomValidity("");
            }
            if(elements[3].value===elements[2].value){
                elements[3].setCustomValidity("");
            }else{
                elements[3].setCustomValidity("패스워드가 일치해야 합니다");
            }

            let valid = [false, false, false, false]
            if(!document.getElementById("form-username").checkValidity()){
                document.getElementById("form-username-invalid").style.display = "block";
            }else{
                document.getElementById("form-username-invalid").style.display = "none";
                valid[0] = true
            }
            if(!document.getElementById("form-userid").checkValidity()){
                document.getElementById("form-userid-invalid").style.display = "block";
            }else{
                document.getElementById("form-userid-invalid").style.display = "none";
                valid[1] = true
            }
            if(!document.getElementById("form-password").checkValidity()){
                document.getElementById("form-password-invalid").style.display = "block";
            }else{
                document.getElementById("form-password-invalid").style.display = "none";
                valid[2] = true
            }
            if(!document.getElementById("form-passwordC").checkValidity()){
                document.getElementById("form-passwordC-invalid").style.display = "block";
            }else{
                document.getElementById("form-passwordC-invalid").style.display = "none";
                valid[3] = true
            }
            if(valid[0]&&valid[1]&&valid[2]&&valid[3]){
                console.log(valid[0]&&valid[1]&&valid[2]&&valid[3]);
                document.getElementById("form").submit();
            }
        }

        function upDate(val){
            if(val.value===""||val.value===null){
                val.style.borderColor = "#FF6666"
            }else{
                val.style.borderColor = "silver"
                document.getElementById(val.id+"-invalid").style.display = "none";
            }
        }
    </script>
</head>
<body>
<div class="header">
    <div class="row justify-content-center">
        <h5 class="col col-6" style="font-size: xx-large; font-weight: bolder; text-align: center">회원가입</h5>
    </div>
</div>
<div class="row justify-content-center p-3">
    <div class="col col-12 col-md-3">
    </div>
    <div class="col col-12 col-md-6">
        <form method="post" id="form" action="signupok">

            <div class="form-floating">
                <input id="form-username" type="text" class="form-text form-control" placeholder="_" name="username" required onfocusout="upDate(this)">
                <label for="form-username">이름</label>
                <p id="form-username-invalid" class="form-invalid">이름을 입력해주세요</p>
            </div>
            <div class="form-floating">
                <input id="form-userid" type="text" class="form-text form-control" placeholder="_" name="userid" required onfocusout="upDate(this)">
                <label for="form-userid">아이디</label>
                <p id="form-userid-invalid" class="form-invalid">아이디를 입력해주세요</p>
            </div>
            <div class="form-floating">
                <input id="form-password" type="password" class="form-text form-control" placeholder="_" name="password" required onfocusout="upDate(this)">
                <label for="form-password">패스워드</label>
                <p id="form-password-invalid" class="form-invalid">패스워드를 입력해주세요</p>
            </div>
            <div class="form-floating">
                <input id="form-passwordC" type="password" class="form-text form-control" placeholder="_" name="psss" required onfocusout="upDate(this)">
                <label for="form-passwordC">패스워드 확인</label>
                <p id="form-passwordC-invalid" class="form-invalid">일치하는 패스워드를 입력해주세요</p>
            </div>
            <div class="justify-content-end d-flex">
                <button type="reset" class="btn btn-secondary ms-2">취소</button>
                <button class="btn btn-primary ms-2" type="button" onclick="beforeSubmit()">저장</button>
            </div>
        </form>
    </div>
    <div class="col col-12 col-md-3">
    </div>
</div>
</body>
</html>

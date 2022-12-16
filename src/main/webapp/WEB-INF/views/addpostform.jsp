<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게임 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
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
        document.addEventListener("DOMContentLoaded", function() {
            let elements = document.getElementsByTagName("input");
            for (let i = 0; i < elements.length; i++) {
                elements[i].oninvalid = function (e) {
                    e.target.setCustomValidity("");
                }
            }
            document.getElementById("form-date").min = new Date().toISOString().split("T")[0];
        })
        function beforeSubmit(){
            let valid = [false, false, false, false, false, false, false]
            //console.log(document.getElementById("form-author").checkValidity())
            if(!document.getElementById("form-title").checkValidity()){
                document.getElementById("form-title-invalid").style.display = "block";
            }else{
                document.getElementById("form-title-invalid").style.display = "none";
                valid[0] = true
            }
            if(!document.getElementById("form-pub").checkValidity()){
                document.getElementById("form-pub-invalid").style.display = "block";
            }else{
                document.getElementById("form-pub-invalid").style.display = "none";
                valid[1] = true
            }
            if(!document.getElementById("form-category").checkValidity()){
                document.getElementById("form-category-invalid").style.display = "block";
            }else{
                document.getElementById("form-category-invalid").style.display = "none";
                valid[2] = true
            }
            if(document.getElementById("form-num").value===0){
                document.getElementById("form-num-invalid").style.display = "block";
            }else{
                document.getElementById("form-num-invalid").style.display = "none";
                valid[3] = true
            }
            if(!document.getElementById("form-email").checkValidity()){
                document.getElementById("form-email-invalid").style.display = "block";
            }else{
                document.getElementById("form-email-invalid").style.display = "none";
                valid[4] = true
            }
            if(document.getElementById("form-content").value===""){
                document.getElementById("form-content-invalid").style.display = "block";
            }else{
                document.getElementById("form-content-invalid").style.display = "none";
                valid[5] = true
            }
            if(document.getElementById("form-rating").value===0||document.getElementById("form-rating").value===null){
                document.getElementById("form-rating-invalid").style.display = "block";
            }else{
                document.getElementById("form-rating-invalid").style.display = "none";
                valid[6] = true
            }
            if(valid[0]&&valid[1]&&valid[2]&&valid[3]&&valid[4]&&valid[5]&&valid[6]){
                console.log(valid)
                document.getElementById("form").submit();
            }
        }

        function upDate(val){
            if(val.value===""||val.value===null){
                val.style.borderColor = "#FF6666"
            }else{
                val.style.borderColor = "silver"
                switch (val.id){
                    case "form-title":
                        document.getElementById("form-title-invalid").style.display = "none";
                        break;
                    case "form-pub":
                        document.getElementById("form-pub-invalid").style.display = "none";
                        break;
                    case "form-category":
                        document.getElementById("form-category-invalid").style.display = "none";
                        break;
                    case "form-email":
                        document.getElementById("form-email-invalid").style.display = "none";
                        break;
                    case "form-content":
                        document.getElementById("form-content-invalid").style.display = "none";
                        break;
                }
            }
        }

        function upDateSel(val){
            if(val.value==0){
                val.style.borderColor = "#FF6666"
            }else{
                val.style.borderColor = "silver"
                document.getElementById("form-category-invalid").style.display = "none";
            }
        }

        function upDateNum(val){
            if(val.value<0){
                val.style.borderColor = "#FF6666"
            }else{
                val.style.borderColor = "silver"
                document.getElementById("form-likes-invalid").style.display = "none";
            }
        }

        function updateRage(val){
            document.getElementById("form-num-val").textContent = "모집인원 ("+val.value+"명)";
        }
    </script>
</head>
<body>
<div class="header">
    <div class="row justify-content-center">
        <h5 class="col col-6" style="font-size: xx-large; font-weight: bolder; text-align: center">게임 추가</h5>
    </div>
</div>
<div class="row justify-content-center p-3">
    <div class="col col-12 col-md-3">
    </div>
    <div class="col col-12 col-md-6">
        <form method="post" id="form" action="addok">

                <div>
                    <input id="form-title" type="text" class="form-text form-control" placeholder="게임 이름" name="GameName" required onfocusout="upDate(this)">
                    <p id="form-title-invalid" class="form-invalid">게임 이름을 작성해 주세요</p>
                </div>
                <div>
                    <input id="form-pub" type="text" class="form-text form-control" placeholder="개발사" name="GamePublisher" required onfocusout="upDate(this)">
                    <p id="form-pub-invalid" class="form-invalid">개발사를 작성해 주세요</p>
                </div>
                <div>
                    <input id="form-category" type="text" class="form-text form-control" placeholder="카테고리" name="Category" required onfocusout="upDate(this)">
                    <p id="form-category-invalid" class="form-invalid">카테고리를 작성해주세요</p>
                </div>
                <div>
                    <input id="form-email" type="text" class="form-text form-control" placeholder="이메일" name="RecruitEmail" required onfocusout="upDate(this)">
                    <p id="form-email-invalid" class="form-invalid">이메일을 작성해주세요</p>
                </div>
            <div>
                <textarea id="form-content" class="form-text form-control" placeholder="내용" name="Content" required onfocusout="upDate(this)"></textarea>
                <p id="form-content-invalid" class="form-invalid">내용을 작성해주세요</p>
            </div>
            <div class="col col-12 col-md-4">
                <input id="form-rating" type="number" name="Rating" class="form-control col col-12 col-md-3" placeholder="추천수" min="0" required onfocusout="upDateNum(this)">
                <p id="form-rating-invalid" class="form-invalid">평점을 입력해주세요</p>
            </div>
            <div class="col col-12 col-md-4">
                <label id="form-num-val" for="form-num">모집인원 (명)</label>
                <input id="form-num" type="range" min="1" max="10" step="1" name="RecruitNum" class="form-range col col-12 col-md-3" placeholder="추천수" required onfocusout="upDateNum(this)" onchange="updateRage(this)">
                <p id="form-num-invalid" class="form-invalid">모집인원을 선택해주세요</p>
            </div>
            <div class="justify-content-end d-flex">
                <button type="reset" class="btn btn-secondary ms-2">취소</button>
                <button class="btn btn-primary ms-2" onclick="beforeSubmit()">저장</button>
            </div>
        </form>
    </div>
    <div class="col col-12 col-md-3">
    </div>
</div>
</body>
</html>
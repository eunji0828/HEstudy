<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>HE_site Main</title>
    <link rel="stylesheet" href="resources/static/css/main/main.css"> 
</head>

<body>
    
    <nav id="main_box">
        <div class="main_img">
            <img src="resources/static/img/ct.jpeg" class="main_img">
        </div>
        <div class="main_manu">
            <div class="top_manu_lf_rig site_name main_font"></div>
            <div id="top_manu_center" class="main_font">
                <a href="/main">HOME</a>
                <a href="/boardWrite">Write</a>
                <a href="/boardList">Board</a>
                <a href="/potoBoardList">Poto Board</a>
            </div>
            <div class="top_manu_lf_rig main_font">
                <a href="signUp">Sign up</a>
                <a href="signIn">Sign in</a>
            </div>
        </div>
    </nav>

        <header>
            <p>Hello!</p>
        </header>

        <div>
            <div>게시판</div>
            <div>사진게시판</div>
            <div>뭐하지</div>
            <div>날씨api</div>
        </div>
    </div>
</body>

<script type="text/script" src="js/main/main.js"></script>
<script>
    alert("ㅇㅇㅇ");
// 스크롤 시 상단 메뉴바 
let main_manu = document.querySelector('.main_manu');    // 메인메뉴
let manu_font = document.querySelectorAll('.manu_font');   // 메인 a링크

window.addEventListener("scroll", function(){
   if(window.scrollY !== 0){
    for(let i=0; i<manu_font.length; i++){
        manu_font[i].style.color='black';
        manu_font[i].style.fontWeight='1rem';
    }
      main_manu.style.borderBottom='1px solid black';
      main_manu.style.background='white';
   } else if(window.scrollY == 0){
    for(let i=0; i<manu_font.length; i++){
        manu_font[i].style.color='white';
        manu_font[i].style.fontWeight='1rem';
    }
      main_manu.style.background='none';
      main_manu.style.borderBottom='none';
   }
});
</script>

</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>

    <title>Login</title>
</head>
<body>
<div id="wrap">
    <div class="w_800">
        <div class="backbtn">
            <a href="<c:url value='/'/>">
                <img src="<c:url value='/img/icon/backbtn2.png'/>" alt="">
                <span>BACK</span>
            </a>
        </div>
        <div class="common_box">
            <div class="logo"><a href="<c:url value='/'/>"></a></div>
            <div class="login">
                <div class="join_input">
                    <img src="<c:url value='/img/icon/user.png'/>" alt="">
                    <input type="text" class="join_text" placeholder="아이디를 입력하세요">
                </div>
                <div class="join_input">
                    <img src="<c:url value='/img/icon/pw.png'/>" alt="">
                    <input type="text" class="join_text" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="logbox">
                    <input type="submit" class="login_ok btnstyle" value="로그인" onclick="location.href=<c:url value='/'/>">
                    <input type="submit" class="login_ok btnstyle" value="회원가입" onclick="location.href='http://localhost:8080/app/user/join'">
                </div>
                <div class="joinbox">
                    <label class="checkbox">
                        <input type="checkbox">
                        <span class="icon"></span>
                        <span class="text">아이디 기억하기</span>
                    </label>
                </div>
            </div>
            <div class="logbox">
                <div class="slogin login2">
                    <a href="javascript:kakaoLogin()">
                        <img src="<c:url value='/img/icon/KakaoTalk1.png'/>" alt="">
                    </a>
                </div>
                <div class="slogin login3">
                    <a href="https://naver.com">
                        <img src="<c:url value='/img/icon/naver.png'/>" alt="">
                    </a>
                </div>
                <div class="slogin login4">
                    <a href="https://www.google.com/">
                        <img src="<c:url value='/img/icon/google.png'/>" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

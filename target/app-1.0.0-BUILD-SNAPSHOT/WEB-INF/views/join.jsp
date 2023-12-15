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
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>sign up</title>
</head>
<body>
<div id="wrap">
    <div class="w_800">
        <div class="backbtn">
            <a href="<c:url value='/login/login'/>">
                <img src="<c:url value='/img/icon/backbtn2.png'/>" alt="">
                <span>BACK</span>
            </a>
        </div>

        <form action="<c:url value="/user/save"/>"  method="POST" onsubmit="return formCheck(this)">
            <div class="common_box">
                <div class="jointitle">Sign Up</div>
                <div class="joininpp">
                    <div class="joininputbox">
                        <div class="join_boxx">
                            <label for="" class="fontw">이름</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/user.png'/>" alt="">
                                <input type="text" class="join_text" placeholder="Your Name" name="U_name" required>
                            </div>
                        </div>
                        <!-- 아이디  -->
                        <div class="join_boxx">
                            <label for="" class="fontw">아이디</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/user.png'/>" alt="">
                                <input type="text" id="U_id" class="join_text" placeholder="Your ID" name="U_id" minlength="4" maxlength="12" autofocus onkeyup="idCheck(this)">
                            </div>
                            <div class="hide_msg">
                                <div class="success-message hide">사용할 수 있는 아이디입니다 </div>
                                <div class="failure-message hide">아이디는 4~12글자이어야 합니다 </div>
                                <div class="failure-message2 hide">영어 또는 숫자만 가능합니다 </div>
                            </div>
                        </div>
                    </div>
                    <%--비밀번호--%>
                    <div class="joininputbox">
                        <div class="join_boxx">
                            <label for="" class="fontw">비밀번호</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/pw.png'/>" alt="">
                                <input type="password" id="U_pw" class="join_text" placeholder="Your Password" name="U_pw" minlength="8" required>
                            </div>
                            <div class="strongPassword-message hide">8글자 이상, 영문, 숫자, 특수문자(@$!%*#?&) 포함</div>
                        </div>
                        <div class="join_boxx">
                            <%--비밀번호확인--%>
                            <label for="" class="fontw">비밀번호 확인</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/pw.png'/>" alt="">
                                <input type="password" id="U_pwchk" class="join_text" placeholder="Password Check" name="U_pw_confirm" minlength="8" required>
                            </div>
                            <div class="mismatch-message hide">비밀번호가 일치하지 않습니다</div>
                        </div>
                        <%--이메일--%>
                        <div class="join_boxx">
                            <label for="" class="fontw">이메일</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/letter-mail.png'/>" alt="">
                                <input type="text" id="email" class="join_text" placeholder="Your Email" name="U_email" required>
                            </div>
                        </div>
                        <%--전화번호--%>
                        <div class="join_boxx">
                            <label for="" class="fontw">연락처</label>
                            <div class="join_input">
                                <img src="<c:url value='/img/icon/phone-call.png'/>" alt="">
                                <input type="text" id="U_phoneNum" class="join_text" placeholder="000-0000-0000" name="U_phoneNum" oninput="autoHyphen(this)" maxlength="13" required>
                            </div>
                        </div>
                    </div>>
                </div>
                <input type="submit" class="join_ok btnstyle" id="signupBtn" value="회원가입 하기">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value='/js/C_member.js'/>"></script>
<script>
    // 전화번호
    const autoHyphen = (target) => {
        console.log(target.value)
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
        console.log(target.value)
    }

    // 빈칸 체크
    function check_onclick(){
        theForm=document.frm1;
        if(theForm.U_name.value=="") {
            alert("이름 입력란이 비어있습니다.")
            return theForm.U_name.focus();
        }
        if(theForm.U_id.value=="") {
            alert("아이디 입력란이 비어있습니다.")
            return theForm.U_id.focus();
        }
        if(theForm.U_pw.value=="") {
            alert("비밀번호 입력란이 비어있습니다.")
            return theForm.U_pw.focus();
        }
        if(theForm.U_email.value=="") {
            alert("이메일 입력란이 비어있습니다.")
            return theForm.U_email.focus();
        }
        if(theForm.U_phoneNum.value=="") {
            alert("전화번호 입력란이 비어있습니다.")
            return theForm.U_phoneNum.focus();
        }
        theForm.submit();
    }
</script>
<script>
    const idCheck = () => {
        const U_id = document.getElementById("U_id").value;
        console.log("입력값: ", U_id);
        $.ajax({
            type:"post",
            url: "/user/save",
            date: {
                "U_id": U_id
            },
            success: function(res) {
                console.log("요청", res)
            },
            error: function(err) {
                console.log("에러", err)
            }
        })
    }
</script>


</body>
</html>

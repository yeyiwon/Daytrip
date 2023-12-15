<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/map.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/main.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/content5.css'/>" rel="stylesheet" type="text/css">
<%--    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44b92f48c164049da1b839b323943028"></script>--%>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>mainpage</title>
</head>
<body>
<div id="wrap">
    <div id="content1" class="content active">
        <header class="header">
            <div class="h_item">
                <div class="">추천</div>
                <div class="hotpick">인기</div>
            </div>
            <div class="h_item">
                <div class="search">
                    <img src="<c:url value='/img/icon/search.png'/>" alt="">
                    <input type="text" class="searchinput" placeholder="어디 가고싶어요 ? ">
                </div>
            </div>
        </header>
        <div class="main1">
        <div class="hotplacenav">
            <span>다가오는 행사 일정</span>
            <div class="more">
                <span>전체보기</span>
                <a href=""><img src="<c:url value='/img/icon/backbtn2.png'/>" alt=""></a>
            </div>
        </div>
        <section class="hotplacesection">
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
        </section>
        <div class="hotplacenav">
            <span>다가오는 행사 일정</span>
            <div class="more">
                <span>전체보기</span>
                <a href=""><img src="<c:url value='/img/icon/backbtn2.png'/>" alt=""></a>
            </div>
        </div>
        <section class="hotplacesection">
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
        </section>
        <section class="hotplacesection">
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
        </section>
        <section class="hotplacesection">
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
        </section>
        <section class="hotplacesection">
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
            <div class="hp_item"></div>
        </section>
    </div>
</div>
    <div id="content2" class="content">
        <header class="header">
            <div id="menu_wrap" class="bg_white">
<%--                <div class="option">--%>
<%--                    <div>--%>
                        <form onsubmit="searchPlaces(); return false;">
                            <div class="search2">
                                <img src="<c:url value='/img/icon/search.png'/>" alt="">
                                <input type="text" class="searchinput" id="keyword" placeholder="맛집" size="20" >
                                <button type="submit" class="btnstyle searchbtn" value="">검색</button>
                            </div>
                        </form>
                    </div>
                <ul id="placesList"></ul>
                <div id="pagination"></div>
        </header>
        <div class="map_wrap">
            <div id="map" style="width:100%;height:100%;"></div>
        </div>
    </div>
    <div id="content4" class="content">
        <div class="linktitle">저장 된 핫플</div>
    </div>
    <div id="content5" class="content">
        <div class="con5top">
            <div class="contop_L">
                <div class="profileimg">
                    <div class="imgcan">
                        <img src="<c:url value='/img/pr.jpg'/>" alt="">
                    </div>
                </div>
            </div>
            <div class="contop_R">
                <div class="name">예이원</div>
                <div class="btnbox">
                <div class="profilemodify">프로필 편집</div>
                <div class="profilemodify">new Log
                <img src="<c:url value='/img/icon/plus2.png'/>"></div>
            </div>
        </div>
            <div class="contop_3">
                <div id="weather_info">
                    <div class="w_1">
                        <div id="current_country"></div>
<%--                        <div id="current_name"></div>--%>

                    </div>
                    <div id="current_weather"></div>

                    <div class="w_2">
                        <div id="current_temp"></div>
                        <img id="weather_icon" src="" alt="날씨 아이콘" />
                    </div>
                </div>
            </div>
        </div>
        <div class="con5bot">
            <nav class="con5_nav">
                <div class="navitm active" onclick="showContent('myLogContent')">마이 로그</div>
                <div class="navitm" onclick="showContent('followingContent')">팔로잉</div>
            </nav>
            <div class="contentbox active2" id="myLogContent">
                <div class="container">
                        <div class="mylogtitle">
                            <div class="myl_L">
                                <div class="profileimg1">
                                    <div class="imgcan1">
                                        <img src="<c:url value='/img/icon/cute6.jpg'/>" alt="">
                                    </div>
                                </div>
                                <div class="box2">
                                    <div class="namename">예이원</div>
                                    <div class="entry">햄볶 </div>
                                </div>
                            </div>
                            <div class="myl_R">
                                <div class="date">DATE : 2023-01-01</div>
                                <div class="location">방문한 위치</div>
                            </div>
                        </div>
                    <div class="image-space">
                        <div class="imgbox">
                            <div class="img1"><img src="<c:url value='/img/34.jpg'/>" alt=""></div></div>
                    </div>
                    <span class="line"></span>
                </div>

                <div class="container">
                    <div class="mylogtitle">
                        <div class="myl_L">
                            <div class="profileimg1">
                                <div class="imgcan1">
                                    <img src="<c:url value='/img/icon/cute6.jpg'/>" alt="">
                                </div>
                            </div>
                            <div class="box2">
                                <div class="namename">예이원</div>
                                <div class="entry">개 졸리다 </div>
                            </div>
                        </div>
                        <div class="myl_R">
                            <div class="date">DATE : 2023-12-12</div>
                            <div class="location">방문한 위치</div>
                        </div>
                    </div>
                    <div class="image-space">
                        <div class="imgbox">
                            <div class="img1"><img src="<c:url value='/img/23.jpg'/>" alt=""></div></div>
                    </div>

                    <span class="line"></span>
                </div>
            </div>
            <div class="contentbox" id="followingContent">
                <h1>여기는 팔로잉 </h1>
            </div>
        </div>
    </div>
    <div class="tab-container">
        <div class="navbaritem" onclick="changeTab(0)">
            <img src="<c:url value='/img/icon/home.png'/>" alt="">
        </div>
        <div class="navbaritem" onclick="changeTab(1)">
            <img src="<c:url value='/img/icon/map1.png'/>" alt="">
        </div>
        <div class="navbaritem">
            <div class="mainlogo"></div>
        </div>
        <div class="navbaritem" onclick="changeTab(3)">
            <img src="<c:url value='/img/icon/wish_heart1.png'/>" alt="">
        </div>
        <div class="navbaritem" onclick="changeTab(4)">
            <div class="myimg">
                <img src="<c:url value='/img/icon/cute6.jpg'/>" alt="">
            </div>
        </div>
    </div>
</div>
<script src="<c:url value='/js/navitm.js'/>"></script>
<script src="<c:url value='/js/tabindex.js'/>"></script>
<script>
    const apikey = '4b01eb3b54a42b16d8034185d2360018';
    var lat=0;
    var lon=0;
    navigator.geolocation.getCurrentPosition(function(position) {
        console.log(position);
            lat = position.coords.latitude;
            lon = position.coords.longitude;
    });
    setTimeout(function() {
    $.ajax({
        url: `http://api.openweathermap.org/data/2.5/weather?appid=${'${apikey}'}&lat=${'${lat}'}&lon=${'${lon}'}&lang=kr`,
        dataType: "json",
        type: "GET",
        async: "false",
        success: function (resp) {
            console.log(resp);
            $("#current_country").text(resp.sys.country);
            $("#current_name").text(resp.name);
            $("#current_temp").text(Math.round(resp.main.temp - 273.15) + "°C");
            $("#current_weather").text("오늘 날씨 : " + resp.weather[0].main);
            var iconUrl = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
            $("#weather_icon").attr("src", iconUrl);
        }
    });
    }, 1000)
</script>
</body>
</html>

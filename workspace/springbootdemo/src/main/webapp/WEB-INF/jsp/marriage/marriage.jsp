<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>姻緣配對</title>
<link href="${contextRoot}/css/marriage/marriage.css" rel="stylesheet" />
</head>
<body>

<jsp:include page="../layout/navbar.jsp"></jsp:include>

 <div class="backgroundImge">
        <div id="change" class="container px-4 px-lg-5 h-100 ">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center ">
                <div class="col-lg-8 align-self-baseline centertext">

                    <!-- 中央圖 -->
                    <div id="centerimg" class="noCenterImg"><img class="incenterimg" id="idimg" src="" alt=""></div>
                    <p id="centerP" class="text-black-75 mb-5 out inZoom">郎才佳人聚於此，情云初話結親誼，
                        月老有意線相牽，更在相情把機會。</p>




                    <!-- 卡片照片及文字 -->
                    <div id="controlBigCard" class="nobigCard inZoom">
                        <div class="card-profile">
                            <div class="card-profile_visual">
                                <img class="cardImg" src="${contextRoot}/image/marriage/catcat.gif" alt="">
                            </div>
                            <div class="card-profile_user-infos">
                                <span class="infos_name">水樣喵喵</span>
                                <span class="infos_nick">@EmWatson</span>
                            </div>
                    <!-- 卡片下方icon -->
                            <div class="card-profile_user-stats">
                                <div class="stats-holder">
                                    <div class="user-stats">
                                        <span><img class="cardicon" src="${contextRoot}/image/marriage/icon/facebook.png" alt=""></span>
                                    </div>
                                    <div class="user-stats">
                                        <span><img class="cardicon" src="${contextRoot}/image/marriage/icon/ig.png" alt=""></span>
                                    </div>
                                    <div class="user-stats">
                                        <span><img class="cardicon" src="${contextRoot}/image/marriage/icon/line.png" alt=""></span>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

<jsp:include page="../layout/footer.jsp"></jsp:include>
<script src="${contextRoot}/js/marriage/marriage.js"></script>
</body>
</html>
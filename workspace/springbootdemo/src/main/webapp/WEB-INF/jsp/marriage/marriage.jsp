<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath }" />
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>姻緣配對</title>
            <link href="${contextRoot}/css/marriage/marriage.css" rel="stylesheet" />
            <style>
                .boy {
                    float: right;


                }

                .girl {
                    position: fixed;
                    float: left;


                }

                .fakeFooter {
                    position: relative;
                    width: 100%;

                }

                .footer {

                    width: 100%;
                }
            </style>
        </head>

        <body style="background-image: url()">

            <jsp:include page="../layout/navbar.jsp"></jsp:include>

            <span class="boy">
                <img src="${contextRoot}/image/marriage/1.gif" alt="">
            </span>



            <div>



                <div id="change" class="container px-4 px-lg-5 h-100 ">
                    <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center ">
                        <div class="col-lg-8 align-self-baseline centertext">

                            <!-- 中央圖 -->
                            <div id="centerimg" class="noCenterImg"><img class="incenterimg" id="idimg" src="" alt="">
                            </div>
                            <h1 id="centerP" class="text-black-75 mb-5 out inZoom">郎才佳人聚於此，情云初話結親誼，
                                月老有意線相牽，更在相情把機會。</h1>




                            <!-- 卡片照片及文字 -->
                            <div id="controlBigCard" class="nobigCard inZoom">
                                <div class="card-profile">
                                    <div class="card-profile_visual">
                                        <img class="cardImg" src="${contextRoot}/image/marriage/catcat.gif" alt="">
                                    </div>
                                    <div class="card-profile_user-infos">
                                        <c:choose>
                                            <c:when test="${Marriage.idGirl.memberId == MemberId}">
                                                <span class="infos_name">${Marriage.idBoy.name}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="infos_name">${Marriage.idGirl.name}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <!-- 卡片下方icon -->
                                    <div class="card-profile_user-stats">
                                        <div class="stats-holder">
                                            <c:choose>
                                                <c:when test="${Marriage.idGirl.memberId == MemberId}">
                                                    <div class="user-stats">
                                                        <span><img class="cardicon"
                                                                src="${contextRoot}/image/marriage/icon/line.png"
                                                                alt=""></span>
                                                        <span class="infos_name">${Marriage.idBoy.line}</span>
                                                    </div>
                                                    <div class="user-stats">
                                                        <span><img class="cardicon"
                                                                src="${contextRoot}/image/marriage/icon/ig.png"
                                                                alt=""></span>
                                                        <span class="infos_name">${Marriage.idBoy.ig}</span>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="user-stats">
                                                        <span><img class="cardicon"
                                                                src="${contextRoot}/image/marriage/icon/facebook.png"
                                                                alt=""></span>
                                                        <span class="infos_name">${Marriage.idGirl.line}</span>
                                                    </div>
                                                    <div class="user-stats">
                                                        <span><img class="cardicon"
                                                                src="${contextRoot}/image/marriage/icon/ig.png"
                                                                alt=""></span>
                                                        <span class="infos_name">${Marriage.idGirl.ig}</span>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>



                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <span class="girl">
                <img src="${contextRoot}/image/marriage/2.gif" alt="">
            </span>
            <span class="fakeFooter">
                <img class="footer" src="${contextRoot}/image/marriage/fakeFooter.png" alt="">
            </span>



            <%-- <jsp:include page="../layout/footer.jsp">
                </jsp:include> --%>
                <script src="${contextRoot}/js/marriage/marriage.js"></script>
        </body>

        </html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath }" />

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>姻緣籤詩</title>
            <link href="${contextRoot}/css/index/drawLots.css" rel="stylesheet" />
            <style>
                .all_border {
                    font-family: Arial, Helvetica, sans-serif;
                    /* background: rgb(171, 150, 108);
    background-attachment: fixed;
    display: flex;
    flex-direction: column; */


                    margin: 0 auto;
                    background-image: url(../../image/donation/drawBig.png);
                    height: 70vh;
                    width: auto;
                    padding: 0%;
                    justify-content: center;
                    align-items: center;
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: contain;
                    position: relative;


                }

                .backgroundImge {
                    padding-top: 9rem;
                    background: url();
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: cover;
                    background-attachment: fixed;
                }
            </style>
        </head>

        <body>
            <jsp:include page="../layout/navbar.jsp"></jsp:include>

            <div class="backgroundImge">
                <div class="container px-4 px-lg-5 h-100">
                    <div class="row gx-3 gx-lg-5 h-100 align-items-center justify-content-center text-center">


                        <div class="all_border ">

                            <img class="imgcenter " src="${contextRoot}/image/donation/drawBig.png" alt="">
                            <div class="drawBigText text-center  ">

                                <h1>感謝捐款</h1>


                                <a href="${contextRoot}/">回首頁</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>



            <jsp:include page="../layout/footer.jsp"></jsp:include>
            <script src="${contextRoot}/js/drawlots/drawlots.js"></script>
        </body>

        </html>
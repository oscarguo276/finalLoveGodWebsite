<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>姻緣籤詩</title>
 <link href="${contextRoot}/css/index/drawLots.css" rel="stylesheet" />
</head>

<body>
<jsp:include page="../layout/navbar.jsp"></jsp:include>

    <div class="backgroundImge">
        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-3 gx-lg-5 h-100 align-items-center justify-content-center text-center">

                <h1>姻緣籤詩</h1>
                <div class="drawBig ">
				<div id="centerimg" class="">
                    <img class="imgcenter " src="${contextRoot}/image/draw/drawBig (2).png" alt="">
                    <div class="drawBigText text-center  ">

                        <p id="s">
                            合掌默禱求籤<br>
                            <br><br><br><br>
                            默念 : 信士OOO，OOO年O月O生，<br>
                            家住OOOOO(現居地址)，因有OOOOO問題，<br>
                            恭請賜籤指點。
                        </p>
                        <p id="s2"></p>
                        <img class="draw " id='idimg' src="" />


                    </div>
                     </div>
                            <div id="controlBigCard" class="nobigCard inZoom">
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input value="${drawName}" type="email" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp">
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input value="${drawMean}" type="password" class="form-control" id="exampleInputPassword1">
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <div id="nextimage"
                        class="row gx-3 gx-lg-5 h-100 align-items-center justify-content-center imgdown ">
                        <img class="downimg " src="${contextRoot}/image/draw/drawSmall (1).png" alt="">
                        <p id="nextText" class="drawSmallText"> 下一步</p>
                    </div>
                </div>
            </div>
        </div>
    </div>



<jsp:include page="../layout/footer.jsp"></jsp:include>
<script src="${contextRoot}/js/drawlots/drawlots.js"></script>
</body>
</html>
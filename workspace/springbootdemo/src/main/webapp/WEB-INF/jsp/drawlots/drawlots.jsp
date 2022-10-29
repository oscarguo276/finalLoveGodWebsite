<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>姻緣籤詩</title>


</head>

<body>

<jsp:include page="../layout/navbar.jsp"></jsp:include>



   <div class="backgroundImge">

        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-3 gx-lg-5 h-100 align-items-center justify-content-center text-center">
  
  
  
    <!-- 按鈕 -->
              
                <!-- 跳出視窗內容 -->

                <div class="modal fade " id="loginModal">

                    <div class="modal-dialog modal-dialog-centered  redLine">
                        <div class="modal-content">
                            <!-- Header -->
                            <div class="modal-header">
                                <h1>求籤結果</h1>
                               <button type="button" class="btn-close" data-bs-dismiss="modal"></button>  
                            </div>
                            <!-- Body -->
                            <div class="modal-body">
                                <!-- 表單 -->
                                <form>
                                    <!-- 籤詩 -->
                                    <div class="form-group">
                                        <h2>籤詩</h2>
                                        <h3>${drawName}</h3>
                                         <br>
                                    </div>
                                    <!-- 解說 -->
                                    <div class="form-group">
                                        <h2>解說</h2>
                                        <h3>${drawMean}</h3>
                                         <br>
                                    </div>
                                     </form>

                            </div>
                        </div>
                    </div>
                </div>
	<!-- 按鈕********************************************************************************************** -->


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
                          <div class="test">
                    <a href="#" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">會員登入</a>
                </div>
                        <p id="s2"></p>
                        <img class="draw " id='idimg' src="" />

                    </div>
                     </div>
                            <div id="controlBigCard" class="nobigCard inZoom">
                        <form>
                            <div class="mb-3">
                                
                                <input value="${drawName}" type="email" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp">
                               
                            </div>
                            <div class="mb-3">
                              
                                <input value="${drawMean}" type="password" class="form-control" id="exampleInputPassword1">
                            </div>
                           
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
    
        
    


<script src="${contextRoot}/vender/bootstrap/5.1.3/bootstrap.bundle.min.js"></script>

<script src="${contextRoot}/js/drawlots/drawlots.js"></script>
</body>
</html>
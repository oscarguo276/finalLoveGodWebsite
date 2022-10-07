<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>註冊會員</title>
 <!-- Custom fonts for this template-->
    <link href="${contextRoot}/vender/fontawesome-free/css/v5.8_all.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="${contextRoot}/css/login/fontsNunito.css" rel="stylesheet">
    <!-- 登入CSS -->
    <link href="${contextRoot}/css/login/login.css" rel="stylesheet">
    <!-- 首頁CSS -->
<!--     <link href="../css/index/styles.css" rel="stylesheet"> -->
    <link href="${contextRoot}/css/index/styles.css" rel="stylesheet">
    <!-- 自訂修改CSS -->
    <link href="${contextRoot}/css/login/loginCustom.css" rel="stylesheet">
    <!-- 翻轉卡片效果 -->
    <link href="${contextRoot}/css/login/loginSwitch.css" rel="stylesheet">
    <!-- 點擊愛心效果 -->
    <link href="${contextRoot}/css/login/loveClick.css" rel="stylesheet">
    <!-- 點擊愛心 只能使用網址 -->
<!--     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" -->
<!--         integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"> -->
</head>
<body class="bg-gradient-primary">
<%-- <jsp:include page="../layout/navbar.jsp"></jsp:include> --%>

<div class="backgroundImge">
<!-- 


⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⢀⣀⡀⢿⣾⢇⠀⠀⠀⠀⠀⠀⠀⢈⠃⠀⠁⠀⢠⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣴⣿⣿⣿⣿⣆⠀⣶⣆⣀⣠⣤⠀⣄⢨⡄⢶⣶⢶⣾⡁⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⢠⢤⣶⣾⣿⣿⣿⣿⠏⣻⠆⣶⡽⣿⣿⣿⣿⣿⣇⡟⢰⡟⣣⣧⣽⣿⣷⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⠛⣽⣿⣿⣿⣿⣿⣿⣿⣟⣥⣻⣶⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣷⣻⣷⣿⣷⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠆⢰⠎⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡷⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠃⢚⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡷⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡼⠀⠀⠀⠀⠀⠀⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⢹⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡛⠸⣟⣿⣿⣿⡕⠄⠙⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢛⣓⣂⣉⣉⣉⣉⣉⡍⠻⢾⠆⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⠜⢿⣍⣏⠀⠀⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣭⣭⣛⡻⢿⣿⣟⡟⠀⠘⣿⣯⠲⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣾⠏⠁⠀⠀⠀⠈⠉⠙⠻⣿⣿⣿⣿⣿⣿⠟⠋⠉⠉⢉⣉⣉⣉⡙⢿⣮⣿⠷⣠⢱⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⠀⠴⠚⠉⡉⠀⠤⢄⠀⠙⣿⣿⣿⣿⣿⣿⡶⡚⠉⠙⠻⠿⡿⢿⣶⣿⣿⣷⣆⠪⢎⣻⠇⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⣿⣇⡁⠀⠸⣿⣄⣡⣾⣕⡄⢸⣿⣿⣿⣿⣿⣮⣶⣿⣄⣁⣶⣌⣘⣿⣿⣿⣿⣿⣷⠈⠛⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣧⣈⣻⣿⣿⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⣝⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣤⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢈⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣿⣿⡿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠹⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⡛⢛⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⡙⠛⢿⣿⣿⣿⣿⣟⣙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢰⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡽⢿⣿⣿⣿⣿⣄⣀⣙⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢸⣿⡿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣛⣿⣿⣿⣿⣿⣿⣿⠃⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠻⠛⠛⣛⣛⣫⣭⣶⣶⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⢀⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣔⠾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⠏⠀⠀⣠⣾⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣈⠉⠛⠛⠛⣛⣿⣿⣿⣿⣿⣿⣿⣿⠳⠊⠀⢠⣾⣿⣿⢣⣄⠀⠀⣠⣶⣷⣶⣦⣄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣷⣄⣀⣴⣿⣿⣿⣿⣿⣿⣿⠟⠋⠐⢀⣴⣿⣿⣿⣯⣾⣿⣦⣾⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⠻⣿⣿⣿⣿⣿⣿⣿⠛⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⠿⠟⠋⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡗⣵⣿⣿⣿⣿⣿⣿⣿⠉⠈⣿⣿⣿⣿⣿⣿
⠀⠀香蕉君保佑  永無BUG⠀⠀⠀           ⢠⡾⠋⠹⢿⣿⣿⣿⣿⡟⠀⠀⠸⣿⣿⣿⣿⣿ 

by 清樺
以下開放評論
2022/9/22 
亮丞覺得不太ok==-->

    <div class="container">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <!-- 切換部分的卡片 -->
                <div class="row" style="margin-bottom: -2.5rem; padding-top: -2rem">
                    <div class="col-lg-3"></div>
                    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-6">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="pt-0 pb-0 pl-5 pr-5">
                                        <div class="h2 text-center font2">
                                            <span>註冊 / 登入</span>
                                        </div>
                                    </div>
                                    <div class="pt-0 pb-0 pl-5 pr-5">
                                        <div class="text-center">
                                            <!-- <button class="shadow btn btn-switchColor btn-block btn-lg font2"
                                                onclick="switchCard()">
                                                切 換
                                            </button> -->
                                            <a href="./login"
                                                class="shadow btn btn-switchColor btn-block btn-lg font2"
                                                target="_self">切 換</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3"></div>
                </div>

                <!-- 顯示部分的卡片 -->
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">


                            <form:form class="user" action="registersubmit" method="post">
                            
                            
                                <div class="row">
                                    <div class="col-lg-3"></div>         
                                    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-6">
                                        <div class="card-body p-0">
                                            <!-- Nested Row within Card Body -->
                                            <div class="p-5 row">
                                                <div class="text-center col-lg-12">
                                                    <h1 class="h2 text-gray-900 mb-4 font">註冊會員</h1>
                                                </div>

                                                <!-- 註冊帳號 -->
                                                <div class="form-group col-lg-12">
                                                                                                
                                                    <input type="text" class="form-control form-control-lg"
                                                        placeholder="請輸入帳號..." 
                                                        pattern=".{6,12}"
                                                        pattern="[a-zA-Z0-9]{6,12}" title="（請最少輸入 6 - 12 位英文與數字）"
                                                        name="registerInput" required>
                                                    <span>（請最少輸入 6 - 12 位英文與數字）</span> <!-- minlength="6" maxlength="12" -->
                                                </div>
                                                <!-- 註冊密碼 -->
                                                <div class="form-group col-lg-12">
                                                    <input type="password" class="form-control form-control-lg"
                                                        placeholder="請輸入密碼..." pattern=".{6,12}"
                                                        pattern="[a-zA-Z0-9]{6,12}" title="（請最少輸入 6 - 12 位英文與數字）"
                                                        name="registerInput" required>
                                                    <span>（請最少輸入 6 - 12 位英文與數字）</span>
                                                </div>

                                                <!-- 註冊姓名 -->
                                                <div class="form-group col-lg-12">
                                                    <input type="text" class="form-control form-control-lg"
                                                        placeholder="請輸入您的姓名..." name="registerInput" required>
                                                </div>

                                                <!-- 註冊性別 -->
                                                <div class="form-group col-lg-3"
                                                    style="text-align: left; font-size:1.5rem;">
                                                    <label>性別：</label>
                                                </div>

                                                <div class="form-group col-lg-2"
                                                    style="text-align: left; font-size:1.5rem;">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="sexRadio"
                                                            id="sexRadio1" checked>
                                                        <label class="form-check-label" for="sexRadio1">
                                                            男
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group col-lg-2"
                                                    style="text-align: left; font-size:1.5rem;">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="sexRadio"
                                                            id="sexRadio0">
                                                        <label class="form-check-label" for="sexRadio0">
                                                            女
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                </div>

                                                <!-- 註冊生日 -->
                                                <div class="form-group col-lg-3"
                                                    style="text-align: left; font-size:1.5rem;">
                                                    <label>生日：</label>
                                                </div>
                                                <div class="form-group col-lg-9"
                                                    style="text-align: left; font-size:1.5rem;">
                                                    <input class="form-control form-control-lg" type="date"
                                                        name="registerInput" required>
                                                </div>

                                                <!-- 註冊地址 -->
                                                <div class="form-group col-lg-12">
                                                    <input type="text" class="form-control form-control-lg"
                                                        placeholder="請輸入您的地址..." name="registerInput" maxlength="30">
                                                </div>

                                                <!-- 註冊手機 -->
                                                <div class="form-group col-lg-12">
                                                    <input type="tel" class="form-control form-control-lg"
                                                        pattern="/^09\d{2}-?\d{3}-?\d{3}$/" placeholder="請輸入您的手機號碼..."
                                                        name="registerInput" pattern=".{6,12}" ><!-- minlength="10" maxlength="11" -->
                                                </div>

                                                <!-- 註冊信箱 -->
                                                <div class="form-group col-lg-12">
                                                    <input type="tel" class="form-control form-control-lg"
                                                        pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                                                        placeholder="請輸入您的E-mail..." name="registerInput">
                                                </div>
                                                <div class="form-check col-lg-10 h2 text-gray-900 mb-4 font">
                                                    <label class="form-check-label" for="flexCheckDefault">
                                                        開啟姻緣功能：
                                                    </label>
                                                    <input class="form-check-input" type="checkbox"
                                                        style="float:none;margin-left: 0.1em; margin-top: 0.1em;"
                                                        onclick="openShutManager(this,'extraData',false,'内容')">
                                                </div>
                                                <div class="form-group col-lg-2">
                                                </div>

                                                <div id="extraData" style="display:none;">
                                                    <!-- <span>我是隐藏的内容</span> -->
                                                    <div class="form-group col-lg-12">
                                                        <label for="exampleFormControlTextarea1"
                                                            style="font-size:1.5rem;">簽名欄：</label>
                                                        <textarea class="form-control" id="exampleFormControlTextarea1"
                                                            rows="5"></textarea>
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <label style="font-size:1.5rem;">聯絡方式二擇一(必填)：</label>
                                                    </div>

<!--                                                     <div class="form-group col-lg-12" -->
<!--                                                         style="font-size:1.5rem;  margin-top: 0.1em; text-align:left;"> -->
<!--                                                         <div class="form-check"> -->
<!--                                                             <input class="form-check-input" type="radio" -->
<!--                                                                 name="contactRadio" id="contactRadio1"> -->
<!--                                                             <label class="form-check-label" for="contactRadio1"> -->
<!--                                                                 Facebook： -->
<!--                                                             </label> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
<!--                                                     <div class="form-group col-lg-12"> -->
<!--                                                         <input type="text" class="form-control form-control-lg" -->
<!--                                                             placeholder="請輸入您Facebook" name="registerInput" -->
<!--                                                             maxlength="50"> -->
<!--                                                     </div> -->

                                                    <div class="form-group col-lg-12"
                                                        style="font-size:1.5rem;  margin-top: 0.1em; text-align:left;">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio"
                                                                name="contactRadio" id="contactRadio2">
                                                            <label class="form-check-label" for="contactRadio2">
                                                                Line：
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <input type="text" class="form-control form-control-lg"
                                                            placeholder="請輸入您Line" name="registerInput" maxlength="50">
                                                    </div>

                                                    <div class="form-group col-lg-12"
                                                        style="font-size:1.5rem;  margin-top: 0.1em; text-align:left;">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio"
                                                                name="contactRadio" id="contactRadio3">
                                                            <label class="form-check-label" for="contactRadio3">
                                                                IG：
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <input type="text" class="form-control form-control-lg"
                                                            placeholder="請輸入您IG" name="registerInput" maxlength="50">
                                                    </div>
                                                </div>

												
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox small">
                                                        <input type="checkbox" class="custom-control-input"
                                                            id="customCheck">
                                                    </div>
                                                </div>
                                                <button class="shadow btn btn-loginColor btn-block btn-lg font"
                                                     name="submit" value="submit"> 註 冊 </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3"></div>
                                </div>
                                
                                
                            </form:form>
                            
                            
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- LIKE 愛心特效 -->
    <div class="middle" style="display: none;">
        <div class="content-wrap middle">
            <div class="like-wrap middle"><i class="fas fa-heart"></i><span>Like</span></div>
        </div>
    </div>
</div>


    <!-- 姻緣開啟 -->
    <script src="${contextRoot}/js/login/marriage.js"></script>
	<!-- 翻轉、愛心 -->
	<script src="${contextRoot}/js/login/login.js"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="${contextRoot}/vender/jquery/jquery.min.js"></script>
    <script src="${contextRoot}/vender/bootstrap/4.6.0/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${contextRoot}/vender/jquery-easing/jquery.easing.min.js"></script>
    <!-- JavaScript-->
    <!-- <script src="js/login/loveClick.js"></script> -->

    <!-- Custom scripts for all pages-->
    <!-- <script src="js/login.js"></script> -->

<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>

</body>
</html>
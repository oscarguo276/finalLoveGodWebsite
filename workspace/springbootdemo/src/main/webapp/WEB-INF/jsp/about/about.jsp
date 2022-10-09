<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>歸心寺</title>
    <!-- Favicon-->
    <!-- <link rel="icon" type="image/x-icon" href="assets/favicon.ico" /> -->
    <!-- Bootstrap Icons-->
    <link href="${contextRoot}/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="${contextRoot}/font/Merriweather+Sans.css" rel="stylesheet" />
    <link href="${contextRoot}/font/Merriweather.css" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="${contextRoot}/css/index/plugin/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="${contextRoot}/css/index/styles.css" rel="stylesheet" />
    <!-- Custom -->
    <link href="${contextRoot}/css/index/customIndex.css" rel="stylesheet" />

</head>
<%-- <jsp:include page="../layout/navbar.jsp"></jsp:include> --%>


<!-- ⣿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⢿⣿⡿⣿⣿⢿⡿⣿⡿⣿⡿⣿⡿⣿⡿⣿⡿⣿⡿⣿
⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⣻⣿⡟⠉⠈⠛⠙⠉⠫⢻⢿⣿⣟⣿⣟⣿⣟⣿⣟⣿⣟⣿⣟⣿⣿
⣿⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⣿⣽⡿⣯⣏⣮⡧⣏⢿⡷⡇⠀⠄⠀⠂⠁⠀⢌⢿⣷⢿⣻⣽⣿⣻⣽⣿⣯⣿⣯⣿⢿⣾
⣿⣾⡿⣾⡿⣾⣿⢾⣿⡾⣿⣾⢿⣾⢿⣾⢿⣾⢿⣾⣟⣿⡿⡗⣽⡗⣽⢼⢟⣛⠄⢀⢀⢄⢐⡰⣸⣻⣾⡿⡿⡫⣛⠿⣻⢳⡿⣷⣿⣻⣿⣻
⣿⣷⣿⡿⣿⣻⣽⣿⣯⣿⣿⣽⣿⣟⣿⣿⣻⣿⣟⣯⣿⣯⣿⣿⡶⣞⢺⣱⣭⣮⣧⣦⣇⣏⠿⡽⣷⣢⡳⣿⡕⣿⡻⣾⡾⣱⣿⣿⣽⣿⣽⣿
⣿⣷⢿⣻⣿⣟⣿⣽⣾⣿⢾⣿⡾⣟⣿⣾⢿⣷⡿⣟⣯⣿⡷⡿⢑⢑⡉⡻⡱⣑⢕⡱⣉⠫⡻⣷⢕⢿⣟⣮⣕⣜⢽⢟⡽⣾⢷⡿⣷⡿⣷⣿
⣿⣾⣿⡿⠏⠃⡀⢁⠁⡉⠛⢯⣿⣿⣻⣾⣿⣯⣿⣿⢿⣻⣿⢑⢅⢇⢇⠥⡸⡸⡽⣺⡳⡕⡆⢝⢟⣧⢻⣯⣿⣾⢷⣟⣿⣟⣿⡿⣟⣿⣿⣽
⣿⣯⠟⠀⡐⠀⠠⠀⠄⠀⢁⢐⢠⡟⢹⣿⢾⣟⣷⣿⡿⣟⣷⡻⡛⠫⡓⡱⣘⢞⣿⢾⡮⣎⢎⠆⢿⢽⣇⣿⡿⣾⣿⢿⣯⣿⣯⣿⢿⣿⢾⣿
⣿⠇⠀⢂⠀⠐⣠⣶⣾⠶⠴⠰⡞⣻⣟⣿⢿⣻⣿⢷⣿⢯⡞⡰⡰⡢⢂⢜⢜⡆⣂⢅⠙⢽⢧⢑⠍⢇⢇⣿⣟⣿⣽⣿⣟⣷⣿⣻⣿⣻⣿⣻
⣿⡁⠐⠠⡈⠌⣿⢿⣾⢆⡀⣰⣻⣽⣿⣻⣿⣟⣿⣟⣿⣽⢑⢌⠌⢌⠢⡣⢇⢃⢇⢗⠕⠌⣻⢄⢅⢢⢣⣿⣽⣿⣽⣾⡿⣯⣿⣯⣿⣯⣿⢿
⣿⣆⠈⠠⠐⢀⠉⠻⠿⡛⠫⠙⠽⣯⣿⣯⣷⣿⢿⣽⣟⣾⡂⢇⣽⠓⠺⠲⠞⢾⣷⡢⡣⡣⢸⠂⠡⢮⣿⣽⣷⡿⣯⣷⣿⣿⣻⣾⡿⣾⡿⣿
⣿⣻⣄⠂⡁⠄⠈⠠⠀⡀⠄⣤⣿⣟⣷⣿⣯⣿⠻⠋⢋⠔⡀⢑⡽⡐⠢⠢⡊⣂⢳⢿⡸⡊⠂⢥⢁⠢⡉⡓⠟⣿⣟⣯⣿⣾⡿⣯⣿⣿⣻⣿
⣿⡿⣿⣷⣾⣾⢦⠀⠂⠀⠄⢿⣷⡿⣟⣷⣿⣻⣆⠨⡐⠔⡨⠠⠃⠬⣯⡷⠘⢈⠠⠙⢧⡰⡵⡃⡎⡊⠄⠄⠰⣿⣟⣿⣯⣷⣿⡿⣿⣾⢿⣻
⣿⣟⣿⡷⣿⣾⣿⣧⠈⠀⠄⢸⣷⣿⡿⣟⣿⣻⡽⡂⠅⠌⣎⣆⠱⡁⠟⢀⢌⠆⡡⣜⢔⢍⡇⡢⠃⡐⠀⠠⠐⠈⢻⣯⣿⣽⣯⣿⣿⣾⣿⣿
⣿⣻⣽⣿⢿⣽⣾⣿⡃⠀⠨⠀⠻⣾⣿⡿⠟⡋⠂⠀⠂⡸⣪⢾⠠⢃⢑⠜⡐⣜⣞⢎⢞⡵⡑⢌⠐⡀⠀⠠⠀⠠⠀⠙⣾⡿⣯⣿⣾⢿⣾⢿
⣿⣿⣻⣽⣿⣟⣿⣾⢿⣅⢠⡠⢔⢋⡑⠀⠁⠀⠀⠌⢀⠪⡺⠍⡁⡢⢊⢔⠝⢊⢎⡪⠘⠮⠪⠀⠂⠀⠀⠄⠀⠄⠠⠀⠘⢿⣟⣿⣾⣿⢿⣿
⣿⣽⣿⣻⣽⣿⣽⣾⣿⢊⢱⠌⡚⠌⠆⣱⡈⠀⠀⢈⠀⠢⢈⢐⢠⠠⡈⠨⠨⡂⢑⢯⠈⣎⠀⢀⠀⠄⠀⠀⡀⠀⠀⠀⠀⠘⣿⣯⣷⣿⣿⣻
⣿⢿⣾⣿⣻⣽⣯⣿⣾⡌⡔⠔⢊⢙⡀⡯⡂⠀⠈⠀⡑⠠⢀⠀⠨⠉⡊⡂⠡⠪⡀⠱⡁⢗⡅⠀⠀⠀⠀⠁⠀⠀⠀⠄⠀⠠⣿⣯⣿⢷⣿⢿
⣿⡿⣿⣾⢿⣻⣽⣯⣷⣿⣔⠑⠁⠁⠀⢯⠀⠀⠂⠠⠈⠄⠠⡈⠄⢃⠒⡐⠐⢁⠨⢀⠠⠹⣒⠀⠀⠁⠀⠀⠠⠐⠀⠀⠀⣴⡿⣾⡿⣟⣿⣿
⣿⢿⣿⣾⣿⡿⣟⣿⣽⣿⣾⡃⡀⠈⡀⢱⠅⠀⠄⠀⠅⡁⠢⡢⠁⡂⡐⢌⠑⢅⢆⢐⢀⠢⠠⡀⠈⠀⢀⠀⠀⠀⢀⣴⣻⣯⣿⣿⣻⣿⢿⣽
⣿⡿⣷⣿⣾⡿⣿⣟⣯⣷⣿⠅⡂⠀⡀⠸⢘⠀⠀⢌⡪⣌⢆⠄⢐⢄⠐⢀⢁⢌⢡⢡⢤⠀⢗⡆⠐⠈⠀⠀⠀⣨⣄⡑⠹⢟⣿⣾⢿⣻⣿⢿
⣿⣿⣻⣷⡿⣟⣿⣟⣿⣯⣿⠨⡂⡁⠀⠨⡼⡀⣌⠂⢻⡪⡂⡂⡸⡜⡠⠸⣼⢺⡜⡾⡕⠅⢌⠳⠀⠀⢀⠀⢘⣿⢾⡿⣷⡌⠻⣾⢿⢿⣻⣿
⣿⣾⡿⣷⣿⣿⣟⣿⣽⣾⣿⣎⡂⠢⠀⠁⢏⢦⡗⠁⠠⠈⢌⢰⢹⢳⡐⠅⢯⡳⣽⡹⡸⠠⠨⡱⡁⠀⠀⡀⠀⢹⣿⢿⣿⣽⣦⡉⠄⠙⣟⣿
⣿⣷⣿⡿⣷⡿⣯⣿⣯⣿⣷⡿⣿⣦⡔⠀⢱⡝⠠⠐⠀⠀⡊⡐⠄⠀⠀⡑⡨⡀⠄⠀⠄⠂⠈⠀⠀⢀⠀⠀⠀⠀⢿⡿⣷⣟⣿⣶⡼⣾⡾⣿
⣿⡷⣿⣻⣿⣻⣿⣻⣾⡿⣾⡿⣟⣷⣇⠐⠘⢨⠀⠀⠄⢀⢇⠸⠀⠀⠁⢐⢁⠣⠀⠀⢀⠀⠀⠂⠈⠀⠀⠀⠁⠀⠈⢿⣟⣿⣯⣷⣿⣿⣻⣿
⣿⢿⣟⣿⣯⣿⣟⣿⣽⡿⣟⣿⡿⣟⣿⡄⠁⡀⠂⠐⡀⠰⠀⠉⠄⠀⠁⠀⡃⠪⠂⠀⠄⠢⠀⠀⠄⠁⡂⠀⠂⠀⡀⠀⠻⢯⣷⣿⣷⢿⣻⣽
⣿⡿⣟⣯⣿⣾⢿⣯⣿⢿⣿⣻⣿⢿⣿⡅⢀⢘⢆⢞⠄⠅⠀⠀⠄⠀⡀⠁⠀⠀⡀⠄⠐⢀⡁⠈⡠⠀⠂⠀⠀⡀⢀⣠⣠⣤⡿⣷⡿⣿⡿⣿
⣿⡿⣿⢿⣯⣿⢿⣯⣿⢿⣯⣿⣟⣿⣟⣯⣄⣤⣷⣷⣴⣶⣴⣤⣤⣀⣀⣀⣠⣀⣠⣀⣄⠀⢇⠝⡜⠠⣥⣦⣷⣾⢿⣷⢿⣯⣿⣟⣿⣟⣿⣿
⣿⢿⡿⣿⣻⣽⣿⢿⣽⣿⣯⣷⣿⢿⣽⣿⣻⣿⣻⣾⣷⢿⣯⣿⣯⣿⢿⣻⣟⣿⣻⣿⣽⣿⣾⡷⣟⣿⣯⣿⡾⣿⣻⣿⣻⣯⣷⣿⢿⣽⣿⣾ -->



<body id="page-top">
    <!-- Navigation-->
<div class="backgroundImge">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-" id="mainNav">
        <div class="container px-4 px-lg-0 pagesNav">
            <a class="navbar-brand" href="../index.html"><img class="barimg" src="../image/index/logo.png"></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/donation">香油錢</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/drawLots/donation">求籤</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/marriagel">求姻緣</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/shop/more">線上商城</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/about">關於月老</a></li>
                </ul>
            </div>
        </div>

    </nav>


    <!-- Masthead-->
    <!-- <header class="masthead"> -->
    <div class="backgroundImge">
        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                <h1 class="mb-3">關 於 月 老</h1>
                <h2 class="mb-5">相傳，人世間的姻緣由月老為每個人配就
                    無論大德前來本寺，是求好姻，結良緣
                    抑或是處於感情裡的貪癡怨，欲求解疑答惑
                </h2>
                <h2>紅塵事，情人結，
                    月老助手幫你牽起手中線
                </h2>
                <h3>
                    鸞鳳配，鴛鴦鳴
                    月老助手媒合你的好姻緣
                    化碟意，破鏡圓
                    你的悲歡離合，月老助手在線解
                </h3>
                <h3 class="mt-5">終結單身? 求好姻緣?
                    你的感情苦惱，月老助手都知道
                    月老online小助手在此為你指點迷津。
                    這裡有許多相信月老的善男信女們來祈求好姻緣
                    ，各位別再猶豫了，讓我們代替月老牽起屬於你的那條紅線!
                </h3>
                <br>
                <h2 class="mt-3">本寺月老憐痴男怨女之苦
                    必將持姻緣簿一一指點迷津
                </h2>
                <h2>願善男信女，持本寺之紅線
                    經歷顛沛流離之後必然會再度與有緣之人相逢。
                </h2>
            </div>
            <div class="col-lg-8 align-self-baseline">
            </div>
        </div>
    </div>

    <!-- </header> -->
    <!-- Footer-->
    <footer class="bg-light py-1">
        <div class="container px-4 px-lg-5">
            <div class="small text-center text-muted">Copyright &copy; 2022 - Company Name</div>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="${contextRoot}/vender/bootstrap/5.1.3/bootstrap.bundle.min.js"></script>
    <!-- SimpleLightbox plugin JS-->
    <script src="${contextRoot}/js/index/plugin/simpleLightbox.min.js"></script>
    <!-- Core theme JS-->
    <script src="${contextRoot}/js/index/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- <script src="./js/index/sb-forms-latest.js"></script> -->
</div>
<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
</body>

</html>
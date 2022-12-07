<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath }" />

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>管理員首頁</title>
            <!-- Bootstrap Icons-->
            <link href="${contextRoot }/font/bootstrap-icons.css" rel="stylesheet" />
            <!-- Google fonts-->
            <link href="${contextRoot }/font/Merriweather+Sans.css" rel="stylesheet" />
            <link href="${contextRoot }/font/Merriweather.css" rel="stylesheet" type="text/css" />
            <!-- SimpleLightbox plugin CSS-->
            <link href="${contextRoot }/css/index/plugin/simpleLightbox.min.css" rel="stylesheet" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="${contextRoot}/css/index/styles.css" rel="stylesheet" />
            <!-- Custom -->
            <link href="${contextRoot}/css/index/customIndex.css" rel="stylesheet" />
            <!-- Management css -->

            <link href="${contextRoot}/css/management/membermanagement.css" rel="stylesheet" />
            <style>
                .barimg {
                    width: auto;
                    height: 4vw;
                }

                .navbar {
                    padding-top: 0rem;
                    padding-bottom: 0rem;
                }
            </style>

        </head>

        <body id="page-top">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light fixed-top " id="mainNav">
                    <div class="container px-4 px-lg-5">
                        <a class="navbar-brand" href="${contextRoot}/management/allManagement">
                            <img class="barimg" src=" ${contextRoot}/image/index/logo.png" style="margin-left: -5vh;">
                        </a>
                        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                            aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/member/page">會員管理</a></li>
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/pair/page">配對管理</a></li>
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/order/page">訂單管理</a></li>
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/product/page">商品管理</a></li>
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/poem/page">詩籤管理</a></li>
                                <li class="nav-item" id="barname"><a class="nav-link"
                                        href="${contextRoot}/donation/page">香油錢管理</a></li>
                                <li class="nav-item" id="barname" onclick="logout()"><a class="nav-link" href="${contextRoot}/management/logout">登出</a></li>
                                <li class="nav-item"><a class="nav-link" href="#"
									data-toggle="modal" data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            
            	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">確定要登出?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">如果確定請選擇"登出"</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">取消</button>
					<a class="btn btn-primary" href="logout">登出</a>
				</div>
			</div>
		</div>
	</div>




            <%-- <jsp:include page="../managerLayout/mfooter.jsp">
                </jsp:include> --%>
                <!-- Bootstrap core JS-->
                <script src="${contextRoot}/vender/bootstrap/5.1.3/bootstrap.bundle.min.js"></script>
                <!-- SimpleLightbox plugin JS-->
                <script src="${contextRoot}/js/index/plugin/simpleLightbox.min.js"></script>
                <!-- Core theme JS-->
                <script src="${contextRoot}/js/index/scripts.js"></script>
                <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>
                <script src="${contextRoot}/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script>
function logout(){
	alert("確定登出？")
}
</script>

        </body>

        </html>
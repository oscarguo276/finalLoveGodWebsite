<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
<meta charset="UTF-8">
<title>歸心寺</title>
  <!-- Bootstrap Icons-->
  <link href="${contextRoot }/font/bootstrap-icons.css" rel="stylesheet" />
  <!-- Google fonts-->
  <link href="${contextRoot }/font/Merriweather+Sans.css"  rel="stylesheet" />
  <link href="${contextRoot }/font/Merriweather.css"  rel="stylesheet" type="text/css" />
  <!-- SimpleLightbox plugin CSS-->
  <link href="${contextRoot }/css/index/plugin/simpleLightbox.min.css" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="${contextRoot}/css/index/styles.css" rel="stylesheet" />
  <!-- Custom -->
  <link href="${contextRoot}/css/index/customIndex.css" rel="stylesheet" />


</head>
<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-light fixed-top py-0" id="mainNav">
    <div class="container px-4 px-lg-5">
      <a class="navbar-brand" 	href=" ${contextRoot}/">
      		<img class="barimg" src=" ${contextRoot}/image/index/logo.png">
      	</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
        </button>
        
      <div class="collapse navbar-collapse"	 id="navbarResponsive">
        <ul class="navbar-nav ms-auto my-2 my-lg-0">
          <li class="nav-item">
          		<a class="nav-link" href="${contextRoot}/donation">香油錢</a>
          </li>
          <li class="nav-item">
          		<a class="nav-link" href="#">求籤</a>
          	</li>
          <li class="nav-item">
          		<a class="nav-link" href="#">求姻緣</a>
          	</li>
          <li class="nav-item">
          		<a class="nav-link" href="${contextRoot}/shop/more">線上商城</a>
          	</li>
          <li class="nav-item">
          		<a class="nav-link" href="#">關於月老</a>
          	</li>
        </ul>
        </div>
        </div>
        </nav>
  <!-- Bootstrap core JS-->
  <script src="${contextRoot}/vender/bootstrap/5.1.3/bootstrap.bundle.min.js"></script>
  <!-- SimpleLightbox plugin JS-->
  <script src="${contextRoot}/js/index/plugin/simpleLightbox.min.js"></script>
  <!-- Core theme JS-->
  <script src="${contextRoot}/js/index/scripts.js"></script>
        

<%-- <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script> --%>
<%-- <script src="${contextRoot}/js/bootstrap.bundle.min.js" type="text/javascript"></script> --%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
   <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>



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
    
  
</body>
</html>
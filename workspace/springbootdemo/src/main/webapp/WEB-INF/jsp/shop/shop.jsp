<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>線上商城</title>
</head>
<body>

<jsp:include page="../layout/navbar.jsp"></jsp:include>

<div class="backgroundImge">
    <div class="container px-4 px-lg-5 h-100">

      <div class="row">
      
	        <div class="col-md-3 text-center">
		          <img src="${contextRoot}/image/shop/img_1.png" height="200px">
		          <br>
		          姻緣紅線 
		           <strong>$250</strong>
		          <br>
		          <button class="btn btn-danger my-cart-btn" data-id="1" data-name="姻緣紅線" data-summary="summary 1"
		            data-price="350" data-quantity="1" data-image="../image/index/shop/img_1.png">加入購物車
		            </button>
		          <a class="btn btn-info"  href="#" >查看商品</a>
	       	 </div>
      
       </div>
      </div>
</div>

<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>
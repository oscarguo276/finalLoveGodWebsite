<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改商品</title>
</head>
<body>

<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

<header class="masthead">


<div class="container">
<h1>修改頁面</h1>

	<div class="card">

  	
	    <div>
                <form action="${contextRoot}/product/postEditProduct" method="post" enctype="multipart/form-data">
                     <input type="hidden" value="${products.prodId}" name="prodId"> <br>
                     商品名稱：<input type="text" value="${products.prodName}" name="productName">
                     <br><br>
                     商品價格：<input type="text" value="${products.prodPrice}"name="productPrice">
                     <br><br>
                     商品庫存：<input type="text" value="${products.prodStock}" name="productStock">
                     <br><br>
                     商品圖片 : <input type="image" src="${pageContext.request.contextPath }/downloadImg/${products.prodId}" height="100px" >
                     <br><br>
                     更新商品圖片：<input type="file" name="photo" >
                     <br><br>
                     <input style="margin-left: 5rem;" type="submit" name="submit" value="送出">

                 </form>    
		       </div>
		 
	  	
	  	</div>
   
</div>












</header>

</body>
</html>
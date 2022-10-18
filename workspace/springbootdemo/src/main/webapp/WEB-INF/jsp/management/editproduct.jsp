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
		     <form:form action="${contextRoot}/product/postEditProduct" method="post" modelAttribute="products" enctype="multipart/form-data">
		       
		       <form:input type="hidden" path="prodId"/>
		       
		       商品名稱：<form:input type="text" path="prodName"/>
		       <br/>
		       商品價格：<form:input type="text" path="prodPrice"/>
		       <br/>
		       商品庫存：<form:input type="text" path="prodStock"/>
		       <br/>
 		       商品圖片：<form:input type="image" alt="picture" path="prodPhoto" src="${pageContext.request.contextPath }/downloadImg/${products.prodId}" height="100px"/> 
		       
		       
		       <div>
		       <input type="submit" name="submit" value="送出">
		       </div>
		     </form:form>     
		       </div>
		 
	  	
	  	</div>
   
</div>












</header>

</body>
</html>
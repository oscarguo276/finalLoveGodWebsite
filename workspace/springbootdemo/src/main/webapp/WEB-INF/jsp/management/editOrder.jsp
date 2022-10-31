<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改訂單</title>
</head>
<body>

<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

<header class="masthead">


<div class="container">
<h1>修改頁面</h1>

	<div class="card">

		    <div class="card-header">
	   			訂單時間:<span>${orders.orderDate}</span>
	   			<br>
	   			訂購人帳號：<span>${orders.userId}</span>
	   			<br>
	   			訂單總金額:<span>${orders.orderSum}</span>
	  		</div>
  		
  			<div class="card-body">
	    	<form:form action="${contextRoot}/order/postEditOrder"  method="post" modelAttribute="orders">
	    	
				    <form:input type="hidden" path="orderId" />
				    <form:input type="hidden" path="userId" />
				    <form:input type="hidden" path="orderSum" /> 
	    			<form:input type="hidden" path="orderDate" /> 
	    			<form:input type="hidden" path="orderDetail" />
	    			<form:input type="hidden" path="paystatus" />
	    			<br>
	    			 收件人姓名：<form:input type="text" path="conName" /> <br>
		             收件人電話：<form:input type="text" path="conPhone" /><br>
		             配送地址: <form:input type="text" path="address" /><br>
		             出貨狀態：
		             <form:radiobutton path="shipstatus" value="1"/>
		             <label for="ship1"> 已出貨</label>
		             <form:radiobutton path="shipstatus" value="0"/>
		             <label for="ship2"> 未出貨</label>
		             <br>
					  <input type="submit" name="submit" value="送出">
            	</form:form> 
         
		   </div>
  		
	  	</div>
</div>


</header>

</body>
</html>
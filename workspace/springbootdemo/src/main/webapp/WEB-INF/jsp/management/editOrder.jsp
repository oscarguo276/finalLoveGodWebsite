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
   			訂單時間:<span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${Orders.orderDate}"/></span>
   			<br>
   			訂購人帳號：<span>${Orders.userId}</span>
  		</div>
  		
  		<div class="card-body">
	    <form:form action="${contextRoot}/order/postEditOrder"  method="post" modelAttribute="orders">
	    			<form:input type="hidden" path="orderId" /> <br>
	    			 訂購人帳號：<form:input type="text" path="userId" /><br>
	    			 訂單總金額:<form:input type="text" path="orderSum" /><br>
	    			 收件人姓名：<form:input type="text" path="conName" /> <br>
                     收件人電話：<form:input type="text" path="conPhone" /><br>
                     配送地址: <form:input type="text" path="address" /><br>
                     
                     <%-- 出貨狀態：<form:input type="checkbox" path="address" /><br>
                     
                     出貨狀態：<form:input type="checkbox" id="status1" name="status1" value="已出貨" path="shipstatus" />
					  <label for="status1"> 已出貨</label><br>
					  <input type="checkbox" id="status2" name="status2" value="未出貨">
					  <label for="status2"> 未出貨</label><br> --%>
					  
					  <input type="submit" name="submit" value="送出">
            </form:form> 
                     
                 
<%--                 <form action="${contextRoot}/order/postEditOrder" method="post" enctype="multipart/form-data" >   
                
                	<input type="text" value="${Orders.orderId}" name="prodId"> <br>
                     訂單時間：${Orders.orderDate}<br>
                     訂單總金額:<input type="text" value="${Orders.orderSum}" name="orderSum" ><br>
                     收件人姓名：<input type="text" value="${Orders.conName}" name="conName">
                     <br>
                     收件人電話：<input type="text" value="${Orders.conPhone}" name="conPhone">
                     <br>
                     配送地址: <input type="text" value="${Orders.address}" name="address">
                     <br>
                     出貨狀態：<br>
                      <input type="checkbox" id="status1" name="status1" value="${Orders.shipstatus}" />
					  <label for="status1"> 已出貨</label>
					  <input type="checkbox" id="status2" name="status2" value="${Orders.shipstatus}">
					  <label for="status2"> 未出貨</label><br>
					  
                     <input type="submit" name="submit" value="送出">
	    	</form>  --%> 
         
		       </div>
		 
	  	
	  	</div>
   
</div>


</header>

</body>
</html>
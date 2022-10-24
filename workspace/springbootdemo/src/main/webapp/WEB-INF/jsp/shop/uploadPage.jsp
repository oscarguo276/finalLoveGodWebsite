<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>
<title>歸心寺</title>
    <style type="text/css">
	.fillIn {
		font-size: 20px;
		width: 40%; 
		margin: 35px;
		text-align: center;
		border-bottom: 2px solid #D0D0D0;
	}


 table thead th {
		color: #ffffff;
		background: #7B7B7B;
		height: 20 px
	}

	
	</style>
    </head>
    <body>
        <jsp:include page="../layout/navbar.jsp"></jsp:include>
   <header class="masthead">
        <div class="backgroundImge">
			<div class="container px-4 px-lg-5 h-100">                
	<c:forEach items="${memberOrders}" var="oneOrder">
	       
	
    	  <table class="fillIn">
    	  <thead>
    	  <tr style="height: 50px;">
    	  <th>訂單編號</th>
    	  <th>訂購日期</th>
    	  <th>訂購總額</th>
    	  </tr>
    	  </thead>
    	  <tbody>
    	  <tr style="height: 60px;">
    	  <td> <a href="${contextRoot}/orderDetailList">${oneOrder.orderId}</a></td>
    	  <td>${oneOrder.orderDate}</td>
    	  <td>$${oneOrder.orderSum}</td>
    	  </tr>
    	  </tbody>
    	
    
    	  </table>
      
    	  </c:forEach>
    
    	  
    	  </div>
         </div>
         </header>
    </body>

    </html>
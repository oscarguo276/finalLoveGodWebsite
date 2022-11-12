<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>寄送收據</title>

<style>
.container{

}
</style>

</head>
<body>

<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

<header class="masthead">

<div class="justify-content-center align-items-center text-center">
<h1 font-size=300px>寄送收據</h1>
</div>
<div class="container"  style="border:1px solid red ; background-image: url('${contextRoot}/image/management/thankful_receipt-nobg.png'); width:650px;height:375px;">

		    <div >
				<br><br><br><br><br>
				<span style="margin-left: 250px;">${donationModel.name}</span>
				<br>
	   			<span style="margin-left: 200px; margin-top: 500px;">${donationModel.address}</span>
	   			<br><br>
	   			<span style="margin-left: 300px">${donationModel.money}</span>
				<br><br><br><br><br>
				<span style="margin-left: 300px">${donationModel.time}</span>
	   			
	  		</div>
  		
 </div> 			



<div>
	    	<form:form action="${contextRoot}/donation/postEditDonation"  method="post" modelAttribute="donationModel">
	    	
				    <form:input type="hidden" path="id" />
				    <form:input type="hidden" path="name" />
				    <form:input type="hidden" path="phone" /> 
	    			<form:input type="hidden" path="mail" /> 
	    			<form:input type="hidden" path="address" />
	    			<form:input type="hidden" path="money" />
	    			<form:input type="hidden" path="receipt" />
	    			<form:input type="hidden" path="captcha" />
	    			<form:input type="hidden" path="time" />
	    			<form:input type="hidden" path="donationStatus" />

	    			
			
				
		             <form:radiobutton path="sendReceipt" value="1"/>
		             <label for="ship1"> 已出貨</label>
		             <form:radiobutton path="sendReceipt" value="0"/>
		             <label for="ship2"> 未出貨</label>
		             <br><br>
		             <div style="text-align: center">
		              <a class="btn btn-secondary" href="http://localhost:8080/my-app/donation/page">取消</a>
					  <input type="submit" style="margin-left: 10px"class="btn btn-primary" name="submit" value="送出">
					  </div>
            	</form:form> 
			</div>				
         
		
  		
	  	



</header>

</body>
</html>
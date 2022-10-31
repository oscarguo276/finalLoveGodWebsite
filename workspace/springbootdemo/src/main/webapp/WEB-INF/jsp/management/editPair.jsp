<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改配對</title>
</head>
<body>

<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

<header class="masthead">


<div class="container">
<h1>修改頁面</h1>

<div class="card">

	    <div class="card-header">
   			配對日期:<span>${pairDetail.pairDate}</span>
   			<br>
   			配對名字(男)：<span>${pairDetail.idBoy.name}</span>
   			<br>
   			配對名字(女)：<span>${pairDetail.idGirl.name}</span>
  		</div>
  		
  		
  		<div class="card-body">
	    	<form:form action="${contextRoot}/pair/postEditPair"  method="post" modelAttribute="pairDetail">
	    	
				    <form:input type="hidden" path="pairDate" />
				    <form:input type="hidden" path="idBoy.name" />
				    <form:input type="hidden" path="idGirl.name" /> 
	    			<form:input type="hidden" path="pairId" /> <br>
	    			 優惠券修改：
	    			 <form:radiobutton path="coupon" value="1"/>
	    			 <label for="get1"> 已領取</label>
					 <form:radiobutton path="coupon" value="" />
					 <label for="get2"> 未領取</label>
	    			 
	    			 <br>
	    		
					  <input type="submit" name="submit" value="送出">
            	</form:form> 
         
		   </div>
		 
	  	
	  	</div>
   
</div>


</header>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改詩籤</title>
</head>
<body>

<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

<header class="masthead">


<div class="container">
<h1>修改詩籤</h1>

	<div class="card">

  	
	    <div>
		     <form:form action="${contextRoot}/poem/editPoem" method="post" modelAttribute="drawlots" enctype="multipart/form-data">
		       
		       <form:input type="hidden" path="drawId"/>
		       
		       詩籤：<form:input type="text" path="drawName"/>
		       <br/><br/>
		       內文：<form:input type="text" path="drawMean"/>
		       <br/><br/>
		       
		       
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
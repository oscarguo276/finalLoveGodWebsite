<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>歸心寺</title>
<style type="text/css">
.fillIn {
	font-size: 18px;
	width: 50%;
	margin: 35px;
	text-align: center;
	border-bottom: 2px solid #D0D0D0;
}

table thead th {
	color: #ffffff;
	background: #7B7B7B;
	margin: 10px;
}
table tbody tr {
	
}


</style>
</head>
<body>
<jsp:include page="../layout/navbar.jsp"></jsp:include>
<header class="masthead">
	<div class="backgroundImge">
		<div class="container px-4 px-lg-5 h-100">
			<c:forEach items="${orderDetail}" var="oD">

		<table class="fillIn">
			<thead>
				<tr style="height: 70px;">
					<th>訂購編號</th>
					<th>商品名稱</th>
					<th>商品照片</th>
					<th>商品數量</th>
					<th>單價</th>
					<th>小計</th>
				</tr>
			</thead>
			<tbody>
				<tr style="height: 60px;">
					<td>${oD.orderId}</td>
					<td>${oD.prod_name}</td>
				<td> <img src="${pageContext.request.contextPath }/downImg/${oD.orderDetailId}" height="60px"></td>
					<td>${oD.quanity}</td>
					<td>$${oD.total}</td>
					<td>$${oD.subtotal}</td>
				</tr>
			</tbody>


		</table>

	</c:forEach>
	</div>
</div>


		<a href="${contextRoot}/uploadPage">回前頁</a>
	</header>

</body>
</html>


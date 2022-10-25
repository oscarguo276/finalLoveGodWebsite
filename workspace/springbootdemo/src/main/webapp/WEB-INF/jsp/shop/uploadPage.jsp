<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
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

.tdbottom{
border-bottom: 2px solid #D0D0D0;
height: 70px;
}

.flex{
	display:flex;
	align-items:center;
	justify-content:center; 
}

</style>
</head>
<body>
	<jsp:include page="../layout/shopNavbar.jsp"></jsp:include>
	<header class="masthead">
		<div class="backgroundImge">
			<div class=" px-4 px-lg-5 h-100 container flex" >
				
				
					<table class="fillIn ">
						<thead>
							<tr style="height: 50px;">
								<th>訂單編號</th>
								<th>訂購日期</th>
								<th>訂購總額</th>
							</tr>
						</thead>
				<c:forEach items="${memberOrders}" var="oneOrder">
						<tbody>
							<tr class="tdbottom">
								<td><a
									href="${contextRoot}/orderDetailList?orderId=${oneOrder.orderId}">${oneOrder.orderId}</a></td>
								<td>${oneOrder.orderDate}</td>
								<td>$${oneOrder.orderSum}</td>
							</tr>
						</tbody>

				</c:forEach>

					</table>



			</div>
		</div>
	</header>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>歸心寺</title>
			<style>
				.st1 {
					width: 500px;
					border-bottom: 2px solid #D0D0D0;
					margin: 10px;
					padding-bottom: 10px;
				}

				.item {
					border-bottom: 2px solid #D0D0D0;
					width: 550px;
					border-collapse: collapse;
					vertical-align: middle;
					text-align: center
				}

				.ds_form {
					display: relative;
				}

				.P_border {
					position: absolute;
					top: 30%;
					left: 50%;
					width: 60%;
				}

				table thead th {
					color: #ffffff;
					background: #7B7B7B;
					height: 20 px
				}

				
				.fillIn {
					font-size: 25px;
					background: #7B7B7B;
					color: #ffffff;
					width: 40%;
					margin: 20px;
					text-align: center
				}
			</style>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
			<script src="${contextRoot}/js/index/shop/jquery.twzipcode.min.js"></script>

		</head>

		<body>
			<jsp:include page="../layout/shopNavbar.jsp"></jsp:include>
			<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>

				<div class="backgroundImge">
					<div class="form-group col-lg-12">
						<h1 style="font-size: 50px; margin-top: 150px;"></h1>
					</div>
					
				</div>
				<div class="container px-4 px-lg-5 h-100">
					<form action="oconfirm" method="post" enctype="multipart/form-data">
				
						<div class="fillIn">
							<label>填寫訂購資訊</label>
						</div>
						<div class="st1">
							<label>姓名：</label> <input type="text" name="conName" id="conName" size="10">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<div class="st1">
							<label>手機號碼：</label> <input type="text" id="conPhone" name="conPhone" size="15">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<div class="st1">
							<label>信箱：</label> <input type="text" size="20">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<div class="st1">
							<label>聯絡地址：</label>
							<div id="zipcode2"></div>

							<input type="text" size="25">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<input type="hidden" name="orderDetail" id="orderD" value="">
						<input type="hidden" id="userId" name="userId" value="${memberId}">
						<label>訂單總額：</label> <input type="text" id="Sum" name="orderSum" size="15" value="">
						
						<div class="fillIn">
							<label>收件人資訊</label>
						</div>
						<div class="st1">
							<label>姓名：</label> <input type="text" size="10">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<div class="st1">
							<label>手機號碼：</label> <input type="text" size="15">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						<div class="st1">
							<label>寄送地址：</label>
							<div id="zipcode2"></div>

							<input type="text" name="address" id="address" size="25">
							<div style="height: 10px;"></div>
							<div style="height: 10px;"></div>
						</div>
						
						<div class="st1">
							<label>※請填寫正確收件人資訊，避免包裹配送不達</label>
						</div>
						<div>
							<br> <input type="submit" value="送出" id='sendData'>
						</div>
					</form>
				</div>
<script>
function show() {
	
	var Myelement = document.querySelector('input[id="Sum"]');
	var MyOrderDetail = document.querySelector('input[id="orderD"]');
	var url = location.href;
	var temp = url.split("?");
	var vars = temp[1].split("&");
	var temp2 = '';
	var pid = '';
	var single_price = '';
	var quality = '';
	var price = '';

	 		//alert(temp[1]);
	 MyOrderDetail.value = temp[1];


	var context = '<div class="ds_form P_border">' +
		'<table class="item"><thead><tr><th>品項</th><th>單價</th><th>數量</th>' +
		'<th>小計</th><td style="height: 50px;"></td></tr></thead>' +
		'<tbody><tr><td style="height: 20px;"></td></tr>';
	var total_price = 0;


	for (var i = 0; i < vars.length; i++) {
		temp2 = vars[i].split("i");
		pid = temp2[1].split("p")[0];
		price = temp2[1].split("p")[1].split("q")[0];
		quality = temp2[1].split("p")[1].split("q")[1];
		context += '<tr><td><img src="">' + pid + '</td>' +
			'<td>' + price / quality + '</td>' +
			'<td>' + quality + '</td>' +
			'<td>' + price + '</td></tr>' +
			'<tr><td style="height: 20px;"></td></tr><tr><td></td>';

		total_price = total_price + Number(price);
	}

	context += '<td></td>' +
		'<td>總計:</td><td>' + total_price + '</td></tr></tbody></table></div>';
	$('body').append(context);
	
	Myelement.value = total_price;
}

window.onload = show;


			</script>


		</body>

		</html>
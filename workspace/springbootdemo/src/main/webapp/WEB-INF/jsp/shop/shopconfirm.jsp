<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>

<head>
<script>

	function show() { 
		var url = location.href;
		var temp = url.split("?");
		var vars = temp[1].split("&");
		var temp2 = '';

		
		var context = '<div class="ds_form P_border">'+ 
			'<table class="item"><thead><tr><th>品項</th><th>單價</th><th>數量</th>'+
			'<th>小計</th><td style="height: 50px;"></td></tr></thead>'+
			'<tbody><tr><td style="height: 20px;"></td></tr>';
		var total_price = 0 ;
	   
		
		for(var i = 0; i < vars.length-1; i++){
			temp2 = vars[i].split(",");
			context += '<tr><td><img src="">' + temp2[0] + '</td>' + 
			'<td>' + temp2[1]/temp2[2] + '</td>'+
			'<td>' + temp2[2] + '</td>'+
			'<td>' + temp2[1] + '</td></tr>'+
			'<tr><td style="height: 20px;"></td></tr><tr><td></td>';
			
			total_price = total_price + Number(temp2[1]);

				
		}
		
		context += '<td></td>'+
		'<td>總計:</td><td>'+ total_price +'</td></tr></tbody></table></div>';
			
		$('body').append(context);
	}
	


	window.onload = show;
</script>

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
	/*                     max-width: 350px; */
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

table tbody tr {
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="${contextRoot}/js/index/shop/jquery.twzipcode.min.js"></script>

</head>

<body>
	<jsp:include page="../layout/navbar.jsp"></jsp:include>
	<%-- <jsp:include page="../layout/footer.jsp">
                </jsp:include> --%>

	<div class="backgroundImge">
		<div class="form-group col-lg-12">
			<h1 style="font-size: 50px; margin-top: 150px;"></h1>
		</div>
		<div class="container px-4 px-lg-5 h-100">

			<form action="oconfirm" method="post" enctype="multipart/form-data">
				<div class="fillIn">
					<label>填寫訂購資料</label>
				</div>
				<div class="st1">
					<label>姓名：</label> <input type="text" name="conName" id="conName"
						size="10">
					<div id='result2c' style="height: 10px;"></div>
					<div id='result1s' style="height: 10px;"></div>
				</div>



				<div class="st1">
					<label>手機號碼：</label> <input type="text" id="conPhone"
						name="conPhone" size="15">
					<div id='result3c' style="height: 10px;"></div>
					<div id='result0s' style="height: 10px;"></div>
				</div>

				<div class="st1">
					<label>寄送地址：</label>
					<div id="zipcode2"></div>
					<script>
						$("#zipcode2").twzipcode({
							countySel : "臺北市",
							districtSel : "大安區", // 地區預設值
							zipcodeIntoDistrict : true, // 郵遞區號自動顯示在地區
							css : [ "city form-control", "town form-control" ], // 自訂 "城市"、"地區" class 名稱
							countyName : "city", // 自訂城市 select 標籤的 name 值
							districtName : "town" // 自訂地區 select 標籤的 name 值
						});
					</script>
					<input type="text" name="address" id="address" size="25">
					<div id='result1c' style="height: 10px;"></div>
					<div id='result2s' style="height: 10px;"></div>
				</div>

				<div class="st1">
					<label>訂單總額：</label> <input type="text" name="orderSum"
						autocomplete="off" size="15">
				</div>

				<!--                             <div class="st1"> -->
				<!--                                 <label>會員編號：</label> -->
				<!--                                 <input type="text" name="buyerId" autocomplete="off" size="15"> -->
				<!--                             </div> -->

				<!--                             <div class="st1"> -->
				<!--                                 <label>訂購編號：</label> -->
				<!--                                 <input type="text" name="orderId" autocomplete="off" size="15"> -->
				<!--                             </div> -->

				<div class="st1">
					<label>※請填寫正確收件人資訊，避免包裹配送不達</label>
				</div>

				<!-- <span style="font-size: 20pt">付款方式</span> -->
				<div>
					<!-- <button type="submit" id='sendData'>送出</button> -->
					<br> <input type="submit" value="送出" id='sendData'>
				</div>
			</form>
			
<!-- <button onclick="show()"> -->
<!-- two -->
<!-- </button> -->
<!-- 			<div class="ds_form P_border"> -->
<!-- 				<table class="item"> -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th>品項</th> -->
<!-- 							<th>單價</th> -->
<!-- 							<th>數量</th> -->
<!-- 							<th>小計</th> -->
<!-- 							<td style="height: 50px;"></td> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 					<tbody> -->
<!-- 						<tr id="show"> -->
<!-- 							<td style="height: 20px;"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td><img src="">商品照片 + 商品名稱</td> -->
<!-- 							<td>$250</td> -->
<!-- 							<td>1</td> -->
<!-- 							<td>250</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td style="height: 20px;"></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td></td> -->
<!-- 							<td>總計:</td> -->
<!-- 							<td></td> -->
<!-- 							<td></td> -->
<!-- 						</tr> -->

<!-- 					</tbody> -->
<!-- 				</table> -->


<!-- 			</div> -->

		</div>
	</div>



</body>

</html>
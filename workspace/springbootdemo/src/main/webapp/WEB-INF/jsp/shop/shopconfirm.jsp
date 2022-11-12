<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	text-align: center;
	font-size: 20px;
}

.fillIn {
	font-size: 20px;
	background: #7B7B7B;
	color: #ffffff;
	text-align: center
}

.tr_h{
	height: 50px;
}

.flex{
	margin-left:15%;
}


</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="${contextRoot}/js/index/shop/jquery.twzipcode.min.js"></script>

</head>

<body>
	<jsp:include page="../layout/navbar.jsp"></jsp:include>
	<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>

	<div class="backgroundImge">
		<div class="form-group col-lg-12">
			<h1 style="font-size: 50px; "></h1>
		</div>

	</div>
	<div class="container px-4 px-lg-5 h-10" style="margin-top:15vh">
		<form action="${contextRoot}/shop/oconfirm" method="post" enctype="multipart/form-data" onclick="return false" name="form1">
			<table class="flex">
				<thead>
					<tr class="tr_h">
						<th>填寫訂購人資訊</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tr_h">
						<td>姓名:<input type="text"   size="10" value="${Name}">
						</td>
					</tr>
					<tr class="tr_h">
						<td>手機號碼：<input type="text" size="15" value="${Phone}"></td>
					</tr>
					<tr class="tr_h">
						<td>信箱：<input type="text" size="20" value="${Mail}"></td>
					</tr>
					
					<tr class="tr_h st1">
						<td >聯絡地址：<input type="text" size="25" value="${Address}"></td>
					</tr>

				</tbody>
				<tr class="tr_h"><td></td></tr>
				
				<tr>
					<th class="fillIn tr_h">填寫收件人資訊</th>
				</tr>

				<tr class="tr_h">
					<td>姓名：<input type="text" size="10" name="conName" id="name1"></td>
				</tr>
				<tr id="idsN" style="color:red ; font-weight:bold">
				</tr>
				<tr class="tr_h">
					<td>手機號碼：<input type="text" size="15" name="conPhone" id="phone"></td>
				</tr>
				<tr id="idsP" style="color:red ; font-weight:bold">
				</tr>
				
				<tr class="tr_h">
					<td>寄送地址：<input type="text" name="address" id="address" size="25"></td>
				</tr>
				<tr class="tr_h st1">
					<td>※請填寫正確收件人資訊，避免包裹配送不達</td>
				</tr>
				<tr class="tr_h">
					<td><input type="submit" id="button" value="送出" ></td>
				</tr>
				<tr>
					<td><input type="hidden" name="orderDetail" id="orderD"
						value=""></td>
				</tr>
				<tr>
					<td><input type="hidden" id="userId" name="userId" value="${memberId}"></td>
				</tr>
				<tr>
					<td><input type="hidden" id="Sum" name="orderSum" size="15" value=""></td>
				</tr>

			</table>

		</form>
		
	</div>






	<script>
	 $(document).ready(function(){
		    $("#button").click(function(){
		        if($("#name1").val()==""){
		            alert("你尚未填寫姓名");
		            eval("document.form1['name'].focus()");       
		        }else if($("#phone").val()==""){
		            alert("你尚未填寫電話");
		            eval("document.form1['phone'].focus()");    
		        }else if($("#address").val()==""){
		            alert("你尚未填寫地址");
		            eval("document.form1['address'].focus()");       
		        }else{
		            document.form1.submit();
		        }
		        
		        
		        
		    })
		 })
	
	document.getElementById("name1").addEventListener("blur", checkName)
    function checkName() {
        //取得name1元素以及 元素值
        let theNameObj = document.getElementById("name1");
        let theNameObjVal = theNameObj.value;

        let sN = document.getElementById("idsN");
        let theNameObjValLen = theNameObjVal.length
        let chName, flagN1 = false;

        let reCheckName = /^[\u4E00-\u9FFF]{2,}$/;
        //1.不可空白 2.至少兩個字以上 3.必須全部為中文
        if (theNameObjVal == "")
            sN.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>姓名不可空白";
        else if (theNameObjValLen < 2) {
            sN.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>姓名至少兩個字以上";
        } else if (reCheckName.test(theNameObjVal)) {
            sN.innerHTML = "<img src='${contextRoot}/image/shop/p5.png'/>正確";
        } else {
            sN.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>姓名必須全部為中文字";
        }

    }
	//---檢查手機號碼
	document.getElementById("phone").addEventListener("blur", checkPhone)
	 function checkPhone() {
		let thePhoneObj = document.getElementById("phone");
        let thePhoneObjVal = thePhoneObj.value;
        let sP = document.getElementById("idsP");
        let thePhoneObjValLen = thePhoneObjVal.length
        let chPhone, flagN2 = false;
        
        var rePhone =  /^[0-9]{10}$/g;
        if (thePhoneObjVal == "")
        	sP.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>手機號碼不可空白";
        	else if (!rePhone.test(thePhoneObjVal)) {
            	sP.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>必須全部為數字";
        }else if (thePhoneObjValLen < 10) {
        	sP.innerHTML = "<img src='${contextRoot}/image/shop/p4.png'/>手機號碼總共10碼";
        } else {
        	sP.innerHTML = "<img src='${contextRoot}/image/shop/p5.png'/>正確";
        }
	}
	
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
			var name = '';

			//alert(temp[1]);
			MyOrderDetail.value = temp[1];

			var context = '<div class="ds_form P_border">'
					+ '<table class="item"><thead><tr><th>品項</th><th>名稱</th><th>單價</th><th>數量</th>'
					+ '<th>小計</th><td style="height: 50px;"></td></tr></thead>'
					+ '<tbody><tr><td style="height: 20px;"></td></tr>';
			var total_price = 0;

			for (var i = 0; i < vars.length; i++) {
				temp2 = vars[i].split("i");
				pid = temp2[1].split("p")[0];
				price = temp2[1].split("p")[1].split("q")[0];
				quality = temp2[1].split("p")[1].split("q")[1].split("n")[0];
				
				console.log("price",price)
				console.log("quality",quality)
				tempname = temp2[1].split("p")[1].split("q")[1].split("n")[1]
				const name = decodeURI(tempname);
				context += '<tr><td><img src="">'
						+ pid
						+ '</td>'
						+'<td>'
						+ name
						+'</td>'
						+ '<td>$'
						+ price
						/ quality
						+ '</td>'
						+ '<td>'
						+ quality
						+ '</td>'
						+ '<td>$'
						+ price
						+ '</td></tr>'
						+ '<tr><td style="height: 20px;"></td></tr><tr><td></td>';

				total_price = total_price + Number(price);
			}

			context += '<td></td>' +'<td></td>'+ '<td>總計:</td><td>$' + total_price
					+ '</td></tr></tbody></table></div>';
			$('body').append(context);

			Myelement.value = total_price;
		}

		window.onload = show;
	</script>


</body>

</html>
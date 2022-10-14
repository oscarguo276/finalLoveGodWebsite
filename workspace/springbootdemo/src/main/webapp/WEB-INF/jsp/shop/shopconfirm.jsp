<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="contextRoot" value="${pageContext.request.contextPath }" />
        <!DOCTYPE html>
        <html>

        <head>
            <script>
                var hasError = false;
                var sendData = document.getElementById("sendData");
                sendData.onclick = function () {
                    hasError = false;
                    // 讀取欄位資料	  
                    var addressValue = document.getElementById("address").value;
                    var conNameValue = document.getElementById("conName").value;
                    var conPhoneValue = document.getElementById("conPhone").value;

                    var div1 = document.getElementById('result1c');
                    var div2 = document.getElementById('result2c');
                    var div3 = document.getElementById('result3c');
                    var divResult = document.getElementById('resultMsg');
                    if (!addressValue) {
                        setErrorFor(div1, "請輸入地址");
                    } else {
                        div1.innerHTML = "";
                    }
                    if (!conNameValue) {
                        setErrorFor(div2, "請輸入姓名");
                    } else {
                        div2.innerHTML = "";
                    }
                    if (!conPhoneValue) {
                        setErrorFor(div3, "請輸入手機號碼");
                    } else {
                        div3.innerHTML = "";
                    }
                    if (hasError) {
                        return false;
                    }

                    var xhr1 = new XMLHttpRequest();
                    xhr1.open("POST", "<c:url value='/shop/confirm' />", true);
                    var jsonOrder = {
                        "address": addressValue,
                        "conName": conNameValue,
                        "conPhone": conPhoneValue,
                    }
                    xhr1.setRequestHeader("Content-Type", "application/json");
                    xhr1.send(JSON.stringify(jsonOrder));

                    xhr1.onreadystatechange = function () {
                        // 伺服器請求完成
                        if (xhr1.readyState == 4 && (xhr1.status == 200 || xhr1.status == 201)) {
                            result = JSON.parse(xhr1.responseText);
                            if (result.fail) {
                                divResult.innerHTML = "<font color='red' >"
                                    + result.fail + "</font>";
                            } else if (result.success) {
                                divResult.innerHTML = "<font color='GREEN'>"
                                    + result.success + "</font>";
                                div1.innerHTML = "";
                                div2.innerHTML = "";
                                div3.innerHTML = "";
                            } else {
                                if (result.addressError) {
                                    div1.innerHTML = "<font color='green' size='-2'>"
                                        + result.nameError + "</font>";
                                } else {
                                    div1.innerHTML = "";
                                }
                                if (result.nameError) {
                                    div2.innerHTML = "<font color='green' size='-2'>"
                                        + result.balanceError + "</font>";
                                } else {
                                    div2.innerHTML = "";
                                }
                                if (result.phoneError) {
                                    div3.innerHTML = "<font color='green' size='-2'>"
                                        + result.birthdayError + "</font>";
                                } else {
                                    div3.innerHTML = "";
                                }
                            }
                        }
                    }
                }



                function setErrorFor(input, message) {
                    input.innerHTML = "<font color='red' size='-2'>" + message + "</font>";
                    hasError = true;
                }


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
                    border-bottom: 2px solid 	#D0D0D0;
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
				
				.fillIn{
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
            <jsp:include page="../layout/navbar.jsp"></jsp:include>
            <%-- <jsp:include page="../layout/footer.jsp">
                </jsp:include> --%>

                <div class="backgroundImge">
                    <div class="container px-4 px-lg-5 h-100">

                        <form action="oconfirm" method="post" enctype="multipart/form-data" >
                            <div class="fillIn"><label >填寫訂購資料</label></div>
                            <div class="st1">
                                <label>姓名：</label>
                                <input type="text" name="conName" id="conName" size="10">
                                <div id='result2c' style="height: 10px;"></div>
                                <div id='result1s' style="height: 10px;"></div>
                            </div>



                            <div class="st1">
                                <label>手機號碼：</label>
                                <input type="text" id="conPhone" name="conPhone" size="15">
                                <div id='result3c' style="height: 10px;"></div>
                                <div id='result0s' style="height: 10px;"></div>
                            </div>

                            <div class="st1">
                                <label>寄送地址：</label>
                                <div id="zipcode2"></div>
                                <script>
                                    $("#zipcode2").twzipcode({
                                        countySel: "臺北市",
                                        districtSel: "大安區", // 地區預設值
                                        zipcodeIntoDistrict: true, // 郵遞區號自動顯示在地區
                                        css: ["city form-control", "town form-control"], // 自訂 "城市"、"地區" class 名稱
                                        countyName: "city", // 自訂城市 select 標籤的 name 值
                                        districtName: "town" // 自訂地區 select 標籤的 name 值
                                    });
                                </script>
                                <input type="text" name="address" id="address" size="25">
                                <div id='result1c' style="height: 10px;"></div>
                                <div id='result2s' style="height: 10px;"></div>
                            </div>
                            
<!--                             <div class="st1"> -->
<!--                                 <label>訂單總額：</label> -->
<!--                                 <input type="text" name="orderSum" autocomplete="off" size="15"> -->
<!--                             </div> -->

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
                            <div >
                                <!-- <button type="submit" id='sendData'>送出</button> -->
                                <br>
                                <input type="submit" value="送出" id='sendData'>
                            </div>
                        </form>

                        <div class="ds_form P_border">
                            <table class="item">
                                <thead>
                                <tr>
                                    <th>品項</th>
                                    <th>單價 </th>
                                    <th>數量 </th>
                                    <th>小計 </th>
                                    <td style="height:50px;"></td>
                                </tr>     
                                </thead>
                                <tbody>
                                <tr> <td style="height:20px;"></td></tr>
                                <tr>
                                    <td><img src="">商品照片 + 商品名稱</td>
                                    <td>$250</td>
                                    <td>1</td>
                                    <td>250</td>
                                </tr>
                                 <tr> <td style="height:20px;"></td></tr>
                                <tr>
                                    <td ></td>
                                    <td>總計:</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                
                                </tbody>
                            </table>


                        </div>

                    </div>
                </div>


        </body>

        </html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>香油錢</title>

  <link href="${contextRoot}/css/donation/donation.css" rel="stylesheet" />
   <link href="${contextRoot}/css/donation/donation2.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../layout/navbar.jsp"></jsp:include>

	<header class="masthead">
		<div class="container px-4 px-lg-5 h-100">
			<div
				class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">

				<div class="all_border" id="all_border">
					<div class="choose_border sign-in-container">
						<form action="#">
							<!-- 選擇付款方法 -->
							<span class="title">歸心寺為信眾設置線上付款添油香，讓您不管在哪裡都可以表達對神明的感謝</span> <span
								class="title">請選擇付款方式:</span> <a
								href="../../pages/donationtest/donation_test2.html"
								id="Payment1">線上信用卡</a> <input type="button" id="Payment2"
								value="ATM匯款" name="check">
						</form>
					</div>

					<div class="Payment_border">
						<!-- 輸入香油錢資訊 -->
						<form class="donation_dataform_m1 sign-up-container"
							name="dataform">
							<span class="title">歸心寺為信眾設置線上付款添油香，讓您不管在哪裡都可以表達對神明的感謝</span> <span
								class="title">請填寫以下資訊，以利寄發感謝狀!</span>
							<div class="form-folat_mb1">
								<input type="text" class="form-contol" name="Name" id="Name"
									maxlength="6" placeholder="請輸入捐款人姓名">
							</div>
							<div class="form-folat_mb1">
								<input type="text" class="form-contol" name="Name" id="Name"
									maxlength="6" placeholder="連絡電話">
							</div>
							<div class="form-folat_mb1">
								<input type="text" class="form-contol" name="Name" id="Name"
									maxlength="6" placeholder="電子郵件">
							</div>
							<div class="form-folat_mb1">
								<input type="text" class="form-contol" name="Name" id="Name"
									maxlength="6" placeholder="收件地址">
							</div>
							<div class="form-folat_mb1">
								<input type="text" class="form-contol" name="Name" id="Name"
									maxlength="6" placeholder="捐款金額">
							</div>
							<div class="form-folat_mb2">
								<div class="form check">
									<input class="form-check-input" type="radio" name="Receipt"
										id="Receipt2" value="N"> <label>無需捐款收據</label>
								</div>
								<div class="form-folat_mb2">
									<input class="form-check-input" type="radio" name="Receipt"
										id="Receipt1" value="Y" checked=""> <label>寄送捐款收據</label>
								</div>
							</div>
							<div class="form-folat_mb3">
								<a id="code"></a><br> <input type="text"
									class="form-contol" name="Check" id="Check" maxlength="6"
									placeholder="驗證碼"> <span id="CheckId"></span> <a
									href="#" id="recode">更新驗證碼</a><br> <input type="button"
									value="驗證" id="validate">
							</div>
						</form>
					</div>
					<!-- 邊框內容 -->
					<div class="overlay_border">
						<div class="overlay">
							<div class="overlay_pannel overlay_left">
								<p class="ps">選擇</p>
								<p class="ps">決定</p>
								<button class="ghost" id="signIn">左邊</button>
							</div>
							<div class="overlay_pannel overlay_right">
								<p class="ps">斡旋</p>
								<p class="ps">雅量</p>
								<button class="ghost" id="signUp">右邊</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

<jsp:include page="../layout/footer.jsp"></jsp:include>
 <script src="${contextRoot}/js/index/donation/Choose_to_pay.js"></script>
 <script src="${contextRoot}/js/index/donation/verification_code.js"></script>
</body>
</html>
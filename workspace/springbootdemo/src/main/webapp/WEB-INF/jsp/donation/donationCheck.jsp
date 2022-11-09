<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>香油錢</title>

<link href="${contextRoot}/css/donation/donationCheck.css" rel="stylesheet" />
<%-- <link href="${contextRoot}/css/donation/donationCaptcha.css" rel="stylesheet" /> --%>
</head>
<body>
	<jsp:include page="../layout/navbar.jsp"></jsp:include>

	<header class="masthead">
		<div class="container px-4 px-lg-5 h-100">
			<div
			class="gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">

				<div class="all_border" id="all_border">
					<div class="TitleThank">
					<h3>請確認您的捐款訊息</h3>
					</div>
					<div class="Payment_border">
<!-- 						輸入香油錢資訊 -->
						<form:form action="${contextRoot}/donationPayment" method="post" modelAttribute="Payment"
						class="donation_dataform_m1 sign-up-container"  onsubmit="return checkForm(false);">
						<form
						class="donation_dataform_m1 sign-up-container" name="dataform"  onsubmit="return checkForm(false);">
							<div class="form-folat_mb1">
								<form:input  readonly="true" path="name" />
							</div>
							<div class="form-folat_mb1">
							<form:input  readonly="true" path="phone" />
							</div>
							<div class="form-folat_mb1">
							<form:input  readonly="true" path="mail" />
							</div>
							<div class="form-folat_mb1">
							<form:input  readonly="true" path="address" />
							
							</div>
							<div class="form-folat_mb1">
							<form:input  readonly="true" path="money" />
							</div>
							
							<div class="form-folat_mb1">
							<form:input  readonly="true" path="receipt" />
							</div>
							<div class="submit_mb1">
							<input type="submit" name="submit" value="確認" id="validate">
							<button  type="button" onclick="location.href='${contextRoot}/donation'"> 重新填寫</button>
							</div>
<!-- 							<div class="form-folat_mb3"> -->
<!-- 								<a id="code"></a><br> <input type="text" -->
<!-- 									class="form-contol" name="Check" id="Check" maxlength="6" -->
<!-- 									placeholder="驗證碼"> <span id="CheckId"></span>  -->
<!-- 									<a href="#" id="recode">更新驗證碼</a><br>  -->
<!-- 									<input type="submit" name="submit" value="驗證" id="validate"> -->
<!-- 							</div> -->
							
							</form>
							</form:form>
					</div>
					<!-- 邊框內容 -->
							
				</div>
			</div>
		</div>
	</header>

<%-- 	<jsp:include page="../layout/footer.jsp"></jsp:include> --%>
	<script src="${contextRoot}/js/index/donation/Choose_to_pay.js"></script>
	<script src="${contextRoot}/js/index/donation/verification_code.js"></script>
</body>
</html>
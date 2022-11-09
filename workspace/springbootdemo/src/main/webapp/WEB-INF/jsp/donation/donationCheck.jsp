<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

			<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>香油錢</title>

				<link href="${contextRoot}/css/donation/donationCheck.css" rel="stylesheet" />
				<%-- <link href="${contextRoot}/css/donation/donationCaptcha.css" rel="stylesheet" /> --%>
				<style>
					.form-folat_mb1 {
						margin: 10px;
						background-color: rgba(240, 248, 255, 0.445);
						caret-color: auto;
						/* 預設 */

						/* 透明 */
						caret-color: #FF1744;
						/* 指定色 */
						outline: none;
						/* 外框效果 */
					}


					.header.masthead {
						padding-top: 5rem
					}

					.button1 {
						font-family: "Helvetica", "Arial", sans-serif;
						display: inline-block;
						font-size: 1em;
						padding: 1em 2em;
						-webkit-appearance: none;
						appearance: none;
						background: url(${contextRoot}/image/donation/drawCenter.png);
						color: black;
						border-radius: 4px;

						cursor: pointer;
						transition: transform ease-in 0.1s, box-shadow ease-in 0.25s;
						/* box-shadow: 0 2px 25px rgb(73 61 0); */
						box-shadow: 5px 5px 2px 1px rgb(0 0 0 / 20%);
						position: absolute;
						bottom: 1.5rem;
						transform: translate(-50%, -50%);
						left: 40%;
						width: 150px;
					}

					.button2 {
						font-family: "Helvetica", "Arial", sans-serif;
						display: inline-block;
						font-size: 1em;
						padding: 1em 2em;
						-webkit-appearance: none;
						appearance: none;
						background: url(${contextRoot}/image/donation/drawCenter.png);
						color: black;
						border-radius: 4px;
						width: 150px;
						cursor: pointer;
						transition: transform ease-in 0.1s, box-shadow ease-in 0.25s;
						/* box-shadow: 0 2px 25px rgb(73 61 0); */
						box-shadow: 5px 5px 2px 1px rgb(0 0 0 / 20%);
						position: absolute;
						bottom: 1.5rem;
						transform: translate(-50%, -50%);
						left: 60%;
					}
				</style>
			</head>

			<body>
				<jsp:include page="../layout/navbar.jsp"></jsp:include>

				<header class="masthead">
					<div class="container px-4 px-lg-5 h-100">
						<div class="gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">

							<div class="all_border" id="all_border">
								<div class="TitleThank"><br><br>
									<h3>請確認您的捐款訊息</h3><br><br><br>
								</div>
								<div class="Payment_border">
									<div>

										<!-- 						輸入香油錢資訊 -->
										<form:form action="${contextRoot}/donationPayment" method="post"
											modelAttribute="Payment" class="donation_dataform_m1 sign-up-container"
											onsubmit="return checkForm(false);">

											<form class="donation_dataform_m1 sign-up-container" name="dataform"
												onsubmit="return checkForm(false);">
												<div class="form-folat_mb1">
													<form:input readonly="true" path="name" />
												</div>

												<div class="form-folat_mb1" style="caret-color: transparent;">
													<form:input readonly="true" path="phone" />
												</div>
												<div class="form-folat_mb1">
													<form:input readonly="true" path="mail" />
												</div>
												<div class="form-folat_mb1">
													<form:input readonly="true" path="address" />

												</div>
												<div class="form-folat_mb1">
													<form:input readonly="true" path="money" />
												</div>

												<div class="form-folat_mb1">
													<form:input readonly="true" path="receipt" />
												</div>

												<button class="button1" type="button"
													onclick="location.href='${contextRoot}/donation'">
													重新填寫</button>
												<div class="submit_mb1">
													<input class="button2" type="submit" name="submit" value="確認"
														id="validate">

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
								</div>
								<!-- 邊框內容 -->

							</div>
						</div>
					</div>
				</header>

				<%-- <jsp:include page="../layout/footer.jsp">
					</jsp:include> --%>
					<script src="${contextRoot}/js/index/donation/Choose_to_pay.js"></script>
					<script src="${contextRoot}/js/index/donation/verification_code.js"></script>
			</body>

			</html>
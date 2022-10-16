<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<c:set scope="session" var="memberId" value="${sessionScope.memberId}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>使用者介面</title>
<!-- Custom fonts for this template-->
<link href="${contextRoot}/vender/fontawesome-free/css/v5.8_all.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="${contextRoot}/css/login/fontsNunito.css" rel="stylesheet">
<!-- 登入CSS -->
<link href="${contextRoot}/css/login/login.css" rel="stylesheet">
<!-- 首頁CSS -->
<!--     <link href="../css/index/styles.css" rel="stylesheet"> -->
<link href="${contextRoot}/css/index/styles.css" rel="stylesheet">
<!-- 自訂修改CSS -->
<link href="${contextRoot}/css/login/loginCustom.css" rel="stylesheet">
</head>
<jsp:include page="../layout/navbar.jsp"></jsp:include>

<body>
	<div class="backgroundImge">
		<form:form class="user" action="registersubmit" method="post"
			modelAttribute="registersubmit">
				<div class="row ">
					<div class="col-md-3"></div>
					<div class="card-body col-lg-3 ">
						<!-- Nested Row within Card Body -->
						<div class="p-1 row">
							<div class="text-center col-lg-12 ">
								<h1 class="h1 mb-4 font" style="font-size:60px ;margin-top: 0;">修改會員</h1>
							</div>
							<div class="text-center col-lg-12">
								<h5 class="text-danger">${Msg}</h5>
							</div>

							<!-- 註冊帳號 -->
							<div class="form-group col-lg-12">
								<input type="text" class="form-control form-control-lg"
									id="memberId" placeholder="請輸入帳號..." pattern=".{6,12}"
									pattern="[a-zA-Z0-9]{6,12}" title="（請最少輸入 6 - 12 位英文與數字）"
									name="memberId" required> <span id='result0c'>（請最少輸入
									6 - 12 位英文與數字）</span>
							</div>
							<!-- 註冊密碼 -->
							<div class="form-group col-lg-12">
								<input type="password" class="form-control form-control-lg"
									id="password" placeholder="請輸入密碼..." pattern=".{6,12}"
									pattern="[a-zA-Z0-9]{6,12}" title="（請最少輸入 6 - 12 位英文與數字）"
									name="password" required> <span>（請最少輸入 6 - 12
									位英文與數字）</span>
							</div>

							<!-- 註冊姓名 -->
							<div class="form-group col-lg-12">
								<input type="text" class="form-control form-control-lg"
									placeholder="請輸入您的姓名..." name="name" required>
							</div>

							<!-- 註冊性別 -->
							<div class="form-group col-lg-3"
								style="text-align: left; font-size: 1.5rem;">
								<label>性別：</label>
							</div>

							<div class="form-group col-lg-2"
								style="text-align: left; font-size: 1.5rem;">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="sex"
										value="1" id="sexRadio1" checked> <label
										class="form-check-label" for="sexRadio1"> 男 </label>
								</div>
							</div>
							<div class="form-group col-lg-2"
								style="text-align: left; font-size: 1.5rem;">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="sex"
										value="0" id="sexRadio0"> <label
										class="form-check-label" for="sexRadio0"> 女 </label>
								</div>
							</div>
							<div class="form-group col-lg-5"></div>

							<!-- 註冊生日 -->
							<div class="form-group col-lg-3"
								style="text-align: left; font-size: 1.5rem;">
								<label>生日：</label>
							</div>
							<div class="form-group col-lg-9"
								style="text-align: left; font-size: 1.5rem;">
								<input class="form-control form-control-lg" type="date"
									name="birthday" required>
							</div>

							<!-- 註冊地址 -->
							<div class="form-group col-lg-12">
								<input type="text" class="form-control form-control-lg"
									placeholder="請輸入您的地址..." name="address" maxlength="30">
							</div>

							<!-- 註冊手機 -->
							<div class="form-group col-lg-12">
								<input type="tel" class="form-control form-control-lg"
									placeholder="請輸入您的手機號碼..." name="phone" pattern=".{6,12}">
								<!-- minlength="10" maxlength="11" -->
							</div>

							<!-- 註冊信箱 -->
							<div class="form-group col-lg-12">
								<input type="tel" class="form-control form-control-lg"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
									placeholder="請輸入您的E-mail..." name="mail">
							</div>

							<!-- 開啟姻緣功能： -->
							<div class="form-check col-lg-10 h2 text-gray-900 mb-4 font">
								<label class="form-check-label" for="flexCheckDefault">
									開啟姻緣功能： </label> <input class="form-check-input" type="checkbox"
									name="mach"
									style="float: none; margin-left: 0.1em; margin-top: 0.1em;"
									onclick="openShutManager(this,'extraData',false,'内容')">
							</div>
							<div class="form-group col-lg-2"></div>
							<!-- 隐藏的内容 -->
							<div id="extraData" style="display: none;">
								<!-- <span>我是隐藏的内容</span> -->
								<div class="form-group col-lg-12">
									<label for="exampleFormControlTextarea1"
										style="font-size: 1.5rem;">簽名欄：</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="5" name="text"></textarea>
								</div>
								<div class="form-group col-lg-12">
									<label style="font-size: 1.5rem;">聯絡方式(建議填寫)：</label>
								</div>

								<div class="form-group col-lg-12"
									style="font-size: 1.5rem; margin-top: 0.1em; text-align: left;">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="Line"
											id="contactRadio2" value="Line"> <label
											class="form-check-label" for="contactRadio2"> Line： </label>
									</div>
								</div>
								<div class="form-group col-lg-12">
									<input type="text" class="form-control form-control-lg"
										placeholder="請輸入您Line" name="registerInput" maxlength="50">
								</div>

								<div class="form-group col-lg-12"
									style="font-size: 1.5rem; margin-top: 0.1em; text-align: left;">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="IG"
											id="contactRadio3" value="IG"> <label
											class="form-check-label" for="contactRadio3"> IG： </label>
									</div>
								</div>
								<div class="form-group col-lg-12">
									<input type="text" class="form-control form-control-lg"
										placeholder="請輸入您IG" name="registerInput" maxlength="50">
								</div>
							</div>

							<button class="shadow btn btn-loginColor btn-block btn-lg font"
								name="submit" value="submit">確 定</button>
						</div>

					</div>
					<div class="col-md-3 mb-md-0 p-md-4"></div>
				</div>
		</form:form>
	</div>


	<!-- 姻緣開啟 -->
	<script src="${contextRoot}/js/login/marriage.js"></script>
	<!-- Bootstrap core JavaScript-->
	<script src="${contextRoot}/vender/jquery/jquery.min.js"></script>
	<script
		src="${contextRoot}/vender/bootstrap/4.6.0/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="${contextRoot}/vender/jquery-easing/jquery.easing.min.js"></script>



</body>
</html>
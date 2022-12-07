<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

				<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="UTF-8">
					<title>管理員首頁</title>
				</head>

				<body>
					<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>

					<header class="masthead">

						<!--查詢元件-->
						<div id="wrap">
							<div class="box1">
								<select id="selectChange" class="form-select" aria-label="multiple select example"
									style="width:auto;">
									<option selected value="0">請選擇</option>
									<option value="1">詩籤編號</option>
									<option value="2">詩籤名稱</option>
								</select>
							</div>
							<div class="box2">
								<div class="input-group">
									<input type="search" id="search" class="form-control input-md" placeholder="請輸入欲搜尋">
									<input type="submit" id="submit" class="btn btn-primary" value="搜索">

								</div>
							</div>
							<div class="box3">
								<button type="button" class="btn btn-primary" data-bs-toggle="modal"
									data-bs-target="#exampleModal" data-bs-whatever="@mdo"> + 新增籤詩</button>
							</div>

						</div>


						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="background-color: #F8F9F9">




									<div class="modal-header">
										<h2 class="modal-title" id="exampleModalLabel">新增籤詩</h2>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<label for="">籤詩內文:</label>
											<input id="poemName" type="text" name="drawName" placeholder="請輸入籤詩..."
												class="form-control mx-sm-1">
										</div>
										<div class="form-group">
											<label for="">解籤內容:</label>
											<input id="poemMean" type="text" name="drawMean" placeholder="請輸入解籤內容..."
												class="form-control mx-sm-1">
										</div>

										<div class="modal-footer">
											<div class="btn btn-secondary" id="poem">一鍵輸入</div>
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">取消</button>
											<button name="submit" value="submit" class="btn btn-primary"
												data-bs-dismiss="modal" id="savePoemBtn">送出</button>
											<!-- 	        <input type="submit" name="submit" class="btn btn-primary" value="送出"> -->
										</div>
									</div>





								</div>
							</div>
						</div>

						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">編號</th>
									<th scope="col">詩籤名稱</th>
									<th scope="col">詩籤解析</th>
									<th scope="col">修改</th>
									<th scope="col">刪除</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<!--
            <c:forEach var="drawlots" items="${page.content}">
              <tr>
                <th scope="row">${drawlots.drawId}</th>
                <td>${drawlots.drawName}</td>
                <td>${drawlots.drawMean}</td>
              
				<td >
                    <a href="${contextRoot}/poem/editPoem?id=${drawlots.drawId}"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
                
                <td>
                    <a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=${drawlots.drawId}"><img src="${contextRoot}/image/management/delete.png"></a>
                </td>
               
              </tr>
             </c:forEach>-->

							</tbody>
						</table>



						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center fixed-bottom">
								<li class="page-item">
									<c:choose>
										<c:when test="${page.number!=0}">
											<a class="page-link"
												href="${contextRoot}/poem/page?p=${page.number}">Previous</a>
										</c:when>
										<c:otherwise>
											<a class="page-link" href="">Previous</a>
										</c:otherwise>
									</c:choose>
								</li>
								<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
									<c:choose>
										<c:when test="${page.number != pageNumber-1}">
											<li class="page-item"><a class="page-link"
													href="${contextRoot}/poem/page?p=${pageNumber}">${pageNumber}</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
													style="background-color: #F2F3F4">${pageNumber}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<li class="page-item">
									<c:choose>
										<c:when test="${page.number!=page.totalPages-1}">
											<a class="page-link"
												href="${contextRoot}/poem/page?p=${page.number+2}">Next</a>
										</c:when>
										<c:otherwise>
											<a class="page-link" href="">Next</a>
										</c:otherwise>
									</c:choose>
								</li>
							</ul>
						</nav>
					</header>

					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<script>



						$("#selectChange").on('change', function () {
							let ddlValue = $(this).val();
							console.log(ddlValue);

							if (ddlValue === "1") {
								$("#submit").click(function id() {

									let name = $("#search").val().trim();
									if (name.length < 1) {
										$("#tbody").empty();
										fetch("http://localhost:8080/my-app/poem/all").then(function (response) {
											return response.json();
										}).then(function (array) {
											$.each(array.content, function (index, value) {
												$("#tbody").append(
													`<tr>
														<td scope="col"> ` + value.drawId + `</td>
														<td scope="col">` + value.drawName + `</td>
														<td scope="col">` + value.drawMean + `</td>
														<td >
															<a href="${contextRoot}/poem/editPoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
															</td>
														<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
															</tr>`
												)
											})
										})
									} else {
										$("#tbody").empty();
										fetch("http://localhost:8080/my-app/poem/findByPoemId/" + name).then(function (response) {
											return response.json();
										}).then(function (array) {
											$.each(array, function (index, value) {
												$("#tbody").append(
													`<tr>
														<td scope="col"> ` + value.drawId + `</td>
														<td scope="col">` + value.drawName + `</td>
														<td scope="col">` + value.drawMean + `</td>
														<td >
															<a href="${contextRoot}/poem/editPoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
														</td>
														<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
													</tr>`
												)
											})
										})
									}
								})
							}

							if (ddlValue === "2") {
								$("#submit").click(function name() {

									let name = $("#search").val().trim();
									if (name.length < 1) {
										$("#tbody").empty();
										fetch("http://localhost:8080/my-app/poem/all").then(function (response) {
											return response.json();
										}).then(function (array) {
											$.each(array.content, function (index, value) {
												$("#tbody").append(
													`<tr>
														<td scope="col"> ` + value.drawId + `</td>
														<td scope="col">` + value.drawName + `</td>
														<td scope="col">` + value.drawMean + `</td>
														<td >
															<a href="${contextRoot}/poem/editPoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
															</td>
														<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
															</tr>`
												)
											})
										})
									} else {
										$("#tbody").empty();
										fetch("http://localhost:8080/my-app/poem/findByPoemname/" + name).then(function (response) {
											return response.json();
										}).then(function (array) {
											$.each(array, function (index, value) {
												$("#tbody").append(
													`<tr>
														<td scope="col"> ` + value.drawId + `</td>
														<td scope="col">` + value.drawName + `</td>
														<td scope="col">` + value.drawMean + `</td>
														<td >
														<a href="${contextRoot}/poem/editPoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
														</td>
														<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
														</tr>`
												)
												console.log("aaa" + value.drawName);
											})
										})
									}
								})
							}
						})



						let poembtn = document.getElementById("poem");
						poembtn.addEventListener("click", poem)
						function poem() {
							console.log("123")
							document.getElementById("poemName").value = "望渠消息向長安，常把菱花仔細看， 見說文書將入境，今朝喜色上眉端。"
							document.getElementById("poemMean").value = "望穿秋水，等待長安帝畿的好消息到來，常常對著菱花鏡仔細看，聽說有信來了，今早不覺喜上眉梢。 這首籤詩，表示期待已久的事情，將有眉目了。好比等待很久的信息，忽然有佳音來報。"
						}

						$("#savePoemBtn").click(function () {

							var poemName = document.getElementById('poemName').value;
							var poemMean = document.getElementById('poemMean').value;
							var dtoObj = { "poemName": poemName, "poemMean": poemMean }
							var dtoJsonString = JSON.stringify(dtoObj);

							$.ajax({
								url: "http://localhost:8080/my-app/api/insertPoem",
								type: "post",
								dataType: "json",
								contentType: "application/json",
								data: dtoJsonString,
								success: function (response) {

									$("#tbody").append(
										`<tr>
											<td scope="col"> ` + response.drawId + `</td>
											<td scope="col"> ` + response.drawName + `</td>
											<td scope="col"> ` + response.drawMean + `</td>
											<td >
												<a href="${contextRoot}/poem/editPoem?id=` + response.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
												</td>
											<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + response.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
										</tr>`
									)


								}, error: function (err) {
									alert(err);
								}

							})

						})


						$(document).ready(function () {
							fetch("http://localhost:8080/my-app/poem/all").then(function (response) {
								return response.json();
							}).then(function (array) {
								$.each(array, function (index, value) {
									$("#tbody").append(
										`<tr>
											<td scope="col"> ` + value.drawId + `</td>
											<td scope="col">` + value.drawName + `</td>
											<td scope="col">` + value.drawMean + `</td>
											<td >
												<a href="${contextRoot}/poem/editPoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/edit.png"></a>
												</td>
											<td scope="col"><a onclick="return confirm('確定刪除詩籤?')" href="${contextRoot}/poem/deletePoem?id=` + value.drawId + `"><img src="${contextRoot}/image/management/delete.png" ></img></td>
												</tr>`
									)
								})
							})

						})



					</script>


				</body>

				</html>
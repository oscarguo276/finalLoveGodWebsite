<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
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
        <!--         <form action="/my-app/member/findByName/{name}" method="GET">  -->
        <div class="box1">
            <select class="form-select" aria-label="multiple select example" style="width:auto;">
                <option selected>帳號</option>
                <option value="1">姓名</option>
                <option value="2">電話</option>
            </select>
        </div>
        <div class="box2">
            <div class="input-group">
                <!--                 javascript search -->
                <!--                  onkeyup="searchName()" -->
                <input type="text" class="form-control input-md" id="searchName">
                <input type="submit" class="btn btn-primary" id="submitBtn" value="搜索"/>
            </div>
        </div>
        <!--         </form> -->
    </div>
    <table class="table table-hover" id="listmember">
        <thead>
        <tr>
            <th scope="col">編號</th>
            <th scope="col">帳號</th>
            <th scope="col">姓名</th>
            <th scope="col">生日</th>
            <th scope="col">地址</th>
            <th scope="col">手機</th>
            <th scope="col">信箱</th>
            <th scope="col">性別</th>
            <th scope="col">姻緣配對</th>
            <!--                 <th scope="col">編輯</th> -->
            <th scope="col">刪除</th>
        </tr>
        </thead>


        <tbody id="tbody">
        </tbody>
    </table>


    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center fixed-bottom">
            <li class="page-item">
                <c:choose>
                    <c:when test="${page.number!=0}">
                        <a class="page-link" href="${contextRoot}/member/page?p=${page.number}">Previous</a>
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
                                                 href="${contextRoot}/member/page?p=${pageNumber}">${pageNumber}</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" style="background-color: #F2F3F4">${pageNumber}</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <li class="page-item">
                <c:choose>
                    <c:when test="${page.number!=page.totalPages-1}">
                        <a class="page-link" href="${contextRoot}/member/page?p=${page.number+2}">Next</a>
                    </c:when>
                    <c:otherwise>
                        <a class="page-link" href="">Next</a>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
    </nav>
</header>

<script>

    $(document).ready(function () {
        fetch("http://localhost:8081/my-app/member/all").then(function (response) {
            return response.json();
        }).then(function (array) {
            $.each(array, function (index, value) {
                $("#tbody").append(
                    `<tr>
	                   <td scope="col"> ` + value.id + `</td>
	                   <td scope="col">` + value.memberId + `</td>
	                   <td scope="col">` + value.name + `</td>
	                   <td scope="col">` + value.birthday + `</td>
	                   <td scope="col">` + value.address + `</td>
	                   <td scope="col">` + value.phone + `</td>
	                   <td scope="col">` + value.mail + `</td>
	                   <td scope="col">` + value.sex + `</td>
	                   <td scope="col">` + value.mach + `</td>
	               </tr>`)
            })
        })

    })

    $("#searchName").keyup(function () {
        let name = $('#searchName').val().trim();

        if (name.length < 1) {
            $("#tbody").empty();
            fetch("http://localhost:8081/my-app/member/all").then(function (response) {
                return response.json();
            }).then(function (array) {
                $.each(array, function (index, value) {
                    $("#tbody").append(
                        `<tr>
	                   <td scope="col"> ` + value.id + `</td>
	                   <td scope="col">` + value.memberId + `</td>
	                   <td scope="col">` + value.name + `</td>
	                   <td scope="col">` + value.birthday + `</td>
	                   <td scope="col">` + value.address + `</td>
	                   <td scope="col">` + value.phone + `</td>
	                   <td scope="col">` + value.mail + `</td>
	                   <td scope="col">` + value.sex + `</td>
	                   <td scope="col">` + value.mach + `</td>
	               </tr>`)
                })
            })
        } else {
            $("#tbody").empty();
            fetch("http://localhost:8081/my-app/member/findByName/" + name).then(function (response) {
                return response.json();
            }).then(function (array) {
                $.each(array, function (index, value) {
                    $("#tbody").append(
                        `<tr>
	                   <td scope="col"> ` + value.id + `</td>
	                   <td scope="col">` + value.memberId + `</td>
	                   <td scope="col">` + value.name + `</td>
	                   <td scope="col">` + value.birthday + `</td>
	                   <td scope="col">` + value.address + `</td>
	                   <td scope="col">` + value.phone + `</td>
	                   <td scope="col">` + value.mail + `</td>
	                   <td scope="col">` + value.sex + `</td>
	                   <td scope="col">` + value.mach + `</td>
	               </tr>`
                    )
                    console.log(value.name);
                })

            })
        }
    })
    $("#tbody").append(`<tr>
	                   <td scope="col"> ` + value.id + `</td>
	                   <td scope="col">$` + value.memberId + `</td>
	                   <td scope="col">$` + value.name + `</td>
	                   <td scope="col">$` + value.birthday + `</td>
	                   <td scope="col">$` + value.address + `</td>
	                   <td scope="col">$` + value.phone + `</td>
	                   <td scope="col">$` + value.mail + `</td>
	                   <td scope="col">$` + value.sex + `</td>
	                   <td scope="col">$` + value.mach + `</td>
	               </tr>`);
</script>

</body>
</html>
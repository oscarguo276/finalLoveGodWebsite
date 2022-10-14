<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
</head>
<body>
<jsp:include page="layout/navbar.jsp"></jsp:include>

<div class="backgroundImge">
     <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                <img class="imgcenter" src="${contextRoot}/image/index/indexCenter.png">
                <div class="col-lg-8 align-self-end imgSize">
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <p class="text-black-75 mb-5" style="font-size:24px">郎才佳人聚於此，情云初話結親誼，
                        月老有意線相牽，更在相情把機會。</p>
                 <a id="login" href="${contextRoot}/login ">登入/註冊</a>
<%--                     <a id="login" href="${contextRoot}/register "></a> --%>
                </div>
            </div>
        </div>

<!-- <br> -->
<!-- <br> -->
</div>


<!--如果你是做首頁 內容請放於這上方 這個要放在最下面 -->
<%-- <jsp:include page="layout/footer.jsp"></jsp:include> --%>

</body>
</html>
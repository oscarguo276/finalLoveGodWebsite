<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理員首頁</title>
</head>
<body>
<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>
<header class="masthead">
        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                <div >
                    <div> 
                        <h1 font-size=300px id="navin" class="nav-item">管理員 你好</h1>
                    </div>
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <h4 class="text-black-75 mb-5">請務必遵守以下訊息....</h4>
     

 
 <form action="${contextRoot}/payment" method="post">
<input type="text" name="transAmount" placeholder="請輸入捐款金額"value="">
<input type="submit">

</form> 
  
   
                
                
                </div>
            </div>
        </div>
        
<!-- <script language="JavaScript">allPayAPIForm.submit()</script> -->
 
</header>
</body>
</html>
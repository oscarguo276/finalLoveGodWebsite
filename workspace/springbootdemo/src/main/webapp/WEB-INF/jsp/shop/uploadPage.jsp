<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>
<%-- <c:if test="${empty LoginOK}"> --%>
<%-- 	<c:redirect url="/login/login.jsp" /> --%>
<%-- </c:if> --%>
<title>歸心寺</title>
    </head>
    <body>
        <jsp:include page="../layout/navbar.jsp"></jsp:include>
        <jsp:include page="../layout/footer.jsp"></jsp:include>
   <header class="masthead">
        <div class="backgroundImge">
			
                <h1>訂單</h1>
<!--                 <form action="fileUpload" method="post" enctype="multipart/form-data"> -->
<!--                     商品名稱: <input type="text" name="pName" > -->
<!--                     <br /> -->
<!--                     商品照片: <input type="file" name="file"> -->
<!--                     <br /> -->
<!--                     商品價格: <input type="text" name="pPrice"> -->
<!--                     <br /> -->
<!--                     <input type="submit" value="送出"> -->
<!--                 </form> -->
	<c:forEach items="${memberOrders}" var="oneOrder">
		   訂單編號:  ${oneOrder.orderId}<br/>
	       訂單姓名: ${oneOrder.userId}<br/>
	       訂單明細: ${oneOrder.orderDetail }<br/>
	       收件人手機: ${oneOrder.conPhone }<br/>
<%-- 	        <img src="${pageContext.request.contextPath }/downloadImg/${oneProduct.prodId}" height="200px"> --%>
      
    	  </c:forEach>


         </div>
         </header>
    </body>

    </html>
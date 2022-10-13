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
        <!--查詢元件-->
       
        <div id="wrap"> 
            <div class="box1">
                <select class="form-select"  aria-label="multiple select example" style="width:auto;">
                <option selected>帳號</option>
                <option value="1">姓名</option>
                <option value="2">電話</option>
                </select>              
            </div>      
           	<div class="box2" >
                <div class="input-group">
                	<input type="text"  class="form-control input-md">
                	<input type="submit" class="btn btn-primary" value="搜索" />
            	</div>
        	</div> 
		</div>
        <table class="table table-hover">
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
            <tbody>
            <c:forEach var="RegisterModel" items="${page.content}">
              <tr>
                <th scope="row">${RegisterModel.id}</th>
                <td>${RegisterModel.memberId}</td>
                <td>${RegisterModel.name}</td>
                <td>${RegisterModel.birthday}</td>
                <td>${RegisterModel.address}</td>
                <td>${RegisterModel.phone}</td>
                <td>${RegisterModel.mail}</td>
                <td>${RegisterModel.sex=="1"?"男":"女"}</td>
               	<td>
                	<c:if test="${RegisterModel.mach!=null}">
                	<img src='${contextRoot}/image/management/check_mark.png'> 
                	</c:if>
               	</td>           
<!--                 <td> -->
<%--                     <a href="${contextRoot}/member/editMember?id=${RegisterModel.id}"><img src="${contextRoot}/image/management/edit.png"></a> --%>
<!--                 </td> -->
                <td>
                    <a onclick="return confirm('確定刪除會員?')" href="${contextRoot}/member/deleteMember?id=${RegisterModel.id}"><img src="${contextRoot}/image/management/delete.png"></a>
                </td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
          
        
			<nav aria-label="Page navigation example">
			 	<ul class="pagination justify-content-center fixed-bottom" >
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
			   					 <li class="page-item"><a class="page-link" href="${contextRoot}/member/page?p=${pageNumber}">${pageNumber}</a></li>
			   				 </c:when>
				    		<c:otherwise>
				    			<li class="page-item"><a class="page-link" style="background-color: #F2F3F4">${pageNumber}</a></li>
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



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div class="box2" >
                <div class="input-group">
                
                    <form:form class="form-inline" action="drawIdSubmit" method="post" 
       				modelAttribute="drawIdSubmit">
                			<input   type="text"  placeholder="請輸入詩籤編號" class="form-control input-md">
                			<span name="submit" class="btn btn-primary">搜索</span>
                	</form:form>
                </div>
            </div>
        </div> 
        
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">新增籤詩</button>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="background-color: #F8F9F9">
    
    
     
       <form:form class="form-inline" action="drawlotssubmit" method="post" 
       modelAttribute="drawlotssubmit">
      <div class="modal-header" >
        <h2 class="modal-title" id="exampleModalLabel">新增籤詩</h2>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		  <div class="form-group">
		    <label for="">籤詩內文:</label>
		    <input type="text" name="drawName" placeholder="請輸入籤詩..."class="form-control mx-sm-1">
		  </div>
		   <div class="form-group">
		    <label for="">解籤內容:</label>
		    <input type="text" name="drawMean" placeholder="請輸入解籤內容..."class="form-control mx-sm-1">
		  </div>
		
		<div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">取消</button>
	        <button name="submit" value="submit" class="btn btn-primary" data-bs-dismiss="modal">送出</button>
<!-- 	        <input type="submit" name="submit" class="btn btn-primary" value="送出"> -->
      	</div>
      </div>
      	</form:form>
      	
      	
      	
    </div>
  </div>
</div>

        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">詩籤編號</th>
                <th scope="col">詩籤</th>
                <th scope="col">詩籤解析</th>
                <th scope="col">修改</th>
                <th scope="col">刪除</th>
              </tr>
            </thead>
              <tbody>
            <c:forEach var="drawlots" items="${page.content}">
              <tr>
                <th scope="row">${drawlots.drawId}</th>
                <td>${drawlots.drawName}</td>
                <td>${drawlots.drawMean}</td>
              
				<td >
                    <a href="${contextRoot}/poem/editPoem?id=${drawlots.drawId}"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
                
                <td>
                    <a onclick="return confirm('確定刪除會員?')" href="${contextRoot}/poem/deleteMember?id=${drawlots.drawId}"><img src="${contextRoot}/image/management/delete.png"></a>
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
			      		<a class="page-link" href="${contextRoot}/poem/page?p=${page.number}">Previous</a>
			      		</c:when>
			      		<c:otherwise>
			      		<a class="page-link" href="">Previous</a>
			      		</c:otherwise>
			      		</c:choose> 
			    	</li>
			    	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
						<c:choose>
			    			<c:when test="${page.number != pageNumber-1}">
			   					 <li class="page-item"><a class="page-link" href="${contextRoot}/poem/page?p=${pageNumber}">${pageNumber}</a></li>
			   				 </c:when>
				    		<c:otherwise>
				    			<li class="page-item"><a class="page-link" style="background-color: #F2F3F4">${pageNumber}</a></li>
				    		</c:otherwise>
			 			</c:choose>     
					</c:forEach>
					<li class="page-item">
						<c:choose>
			    		<c:when test="${page.number!=page.totalPages-1}">
			      		<a class="page-link" href="${contextRoot}/poem/page?p=${page.number+2}">Next</a>
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
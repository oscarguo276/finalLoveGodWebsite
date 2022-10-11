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

        <div id="wrap"> 
            <div class="box1">
                <select class="form-select"  aria-label="multiple select example" style="width:auto;">
                <option selected>配對日期</option>
                <option value="1">會員帳號</option>
                </select>              
            </div>      
            <div class="box2" >
                <div class="input-group">
                <input type="text"  class="form-control input-md"><span class="btn btn-primary">搜索</span>
                </div>
            </div>
        </div> 

        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">配對編號</th>
                <th scope="col">配對日期</th>
                <th scope="col">配對帳號（男）</th>
                <th scope="col">配對帳號（女）</th>
                <th scope="col">領取優惠</th>
                <th scope="col">修改</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>2022-09-28</td>
                <td>Mark</td>
                <td>Mary</td>
                <td>尚未</td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>2022-09-28</td>
                <td>Leo</td>
                <td>Kitty</td>
                <td>已領</td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>2022-09-28</td>
                <td>Jack</td>
                <td>Jessica</td>
                <td>尚未</td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
              </tr>  
              
            </tbody>
          </table>

            <div id="pageindex">
                <nav aria-label="Page navigation example" >
                <ul class="pagination">
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </ul>
                </nav>
            </div>


          
        
    </header>


</body>
</html>
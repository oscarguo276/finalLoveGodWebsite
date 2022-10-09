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
                <input type="text"  class="form-control input-md"><span class="btn btn-primary">搜索</span>
                </div>
            </div>
        </div> 

        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">帳號</th>
                <th scope="col">姓名</th>
                <th scope="col">生日</th>
                <th scope="col">地址</th>
                <th scope="col">手機</th>
                <th scope="col">信箱</th>
                <th scope="col">姻緣配對</th>
                <th scope="col">編輯</th>
                <th scope="col">刪除</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>2012-10-10</td>
                <td>xxxxxxxx</td>
                <td>09xxxxxx</td>
                <td>xxxx@gmail.com.tw</td>
                <td><img src="${contextRoot}/image/management/check_mark.png"></td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/delete.png"></a>
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
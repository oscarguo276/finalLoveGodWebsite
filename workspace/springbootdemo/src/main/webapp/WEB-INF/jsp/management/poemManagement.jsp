<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot"  value="${pageContext.request.contextPath }"/>
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
                <input type="text"  placeholder="請輸入詩籤編號" class="form-control input-md"><span class="btn btn-primary">搜索</span>
                </div>
            </div>
        </div> 

        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">詩籤編號</th>
                <th scope="col">詩籤內文</th>
                <th scope="col">詩籤圖片</th>
                <th scope="col">修改</th>
                <th scope="col">刪除</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>xxxxxxx</td>
                <td>
                    <button>圖片上傳</button>
                </td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/edit.png"></a>
                </td>
                <td>
                    <a href="#about"><img src="${contextRoot}/image/management/delete.png"></a>
                </td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>xxxxxxx</td>
                <td>
                    <button>圖片上傳</button>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/edit.png"></a>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/delete.png"></a>
                </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>xxxxxxx</td>
                <td>
                    <button>圖片上傳</button>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/edit.png"></a>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/delete.png"></a>
                </td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>xxxxxxx</td>
                <td>
                    <button>圖片上傳</button>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/edit.png"></a>
                </td>
                <td>
                    <a href="#about"><img src="../image/index/manager/delete.png"></a>
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
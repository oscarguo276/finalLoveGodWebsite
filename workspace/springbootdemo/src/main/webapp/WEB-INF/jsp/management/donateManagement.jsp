<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>香油錢管理</title>
</head>

<body>
<jsp:include page="../management/managerLayout/mnavbar.jsp"></jsp:include>


<!-- <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center"> -->
<header class="masthead">
<div id="wrap">
	<div class="box1">
		<select class="form-select" aria-label="multiple select example" style="width:auto;">
			<option selected>捐款編號</option>
			<option value="1">姓名</option>
			<option value="2">電話</option>
		</select>
     </div>
	 <div class="box2">
           <div class="input-group">
                <input type="text" class="form-control input-md"><span class="btn btn-primary">搜索</span>
            </div>
	 </div>
</div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">編號</th>
                    <th scope="col">姓名</th>
                    <th scope="col">手機</th>
                    <th scope="col">地址</th>
                    <th scope="col">信箱</th>
                    <th scope="col">金額</th>
                    <th scope="col">日期</th>
                    <th scope="col">捐款方式</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Jake</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>信用卡</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Leo</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>500000</td>
                    <td>2022-09-22</td>
                    <td>信用卡</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Kitty</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>信用卡</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Snoopy</td>
                    <td>09xxxxxx</td>
                    <td>xxxxxxxx</td>
                    <td>xxxx@gmail.com</td>
                    <td>2000</td>
                    <td>2022-09-22</td>
                    <td>匯款</td>
                </tr>
            </tbody>
        </table>

        <div id="pageindex" >
            <nav aria-label="Page navigation example">
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
        
<!--       </div> -->
<!--  </div> -->

        
</body>
</html>
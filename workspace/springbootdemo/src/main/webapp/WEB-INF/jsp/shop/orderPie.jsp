<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>歸心寺</title>

<style>
.pieM{
margin-top: 20vh;
display:flex;
align-items:center;
justify-content:center; 
}
.fillIn {
	font-size: 20px;
	width: 40%;
	margin: 35px;
	text-align: center;
	border-bottom: 2px solid #D0D0D0;
	
}
</style>

</head>
 <body>
<jsp:include page="../layout/shopNavbar.jsp"></jsp:include>
<div class="pieM">
<canvas id="myChart" style="width:100%;max-width:700px"></canvas>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>


var line_name = [];
var line_q = [];

var test = "";

<c:forEach items="${orderDetail}" var="oD" >	
	test = test + "${oD.prod_name}";
	line_name.push("${oD.prod_name}");
	line_q.push("${oD.quanity}");
	</c:forEach>
	
//-----去除重複的商品名稱
var line_name_uniqulo2 = [];
var line_name_uniqulo = [];
line_name.reduce(function(res, value) {
  if (!res[value]) {
    res[value] = {value};
    line_name_uniqulo2.push(res[value])
  }
  return res;
}, {});

//-----將商品的名稱轉為字串
for (i = 0 ; i < line_name_uniqulo2.length ; i++){
	line_name_uniqulo.push(line_name_uniqulo2[i].value);
}

var line_q_sum = new Array(line_name_uniqulo.length);

for (u = 0 ; u < line_name_uniqulo.length ; u++){
	line_q_sum[u] = 0;
}

//--依照原本的商品名稱位置，累加商品的賣出數量
for ( i = 0 ; i < line_q.length ; i++ ){
	for (u = 0 ; u < line_name_uniqulo.length ; u++){
		if (line_name_uniqulo[u] == line_name[i]){
			line_q_sum[u] = line_q_sum[u] + parseInt(line_q[i]);
		}
	}
} 

//------------------------------//
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145",
  "#DCB5FF",
  "#79FF79",
  "#2894FF",
  "#FF9797",
  "#4F9D9D",
  "#FF9224",
  "#996633",
  "#999966",
  "#FFCC99"
	
];

new Chart("myChart", {
  type: 'bar',
  data: {
    labels: line_name_uniqulo,
    datasets: [{
    backgroundColor: barColors,
    data: line_q_sum
    }],
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "2022/11月 商品銷售數量"
    }
  }
});


</script>
  
</body>
</html>
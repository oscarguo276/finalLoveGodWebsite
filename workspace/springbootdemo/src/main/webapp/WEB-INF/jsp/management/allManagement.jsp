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

        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                <div >
                    <div> 
                        <h1 font-size=300px id="navin" class="nav-item">管理員 你好</h1>
                    </div>
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <h4 class="text-black-75 mb-5">請務必遵守以下訊息....</h4>
     

  
<!--    <form id="allPayAPIForm" action="https://payment-stage.ecPay.com.tw/Cashier/AioCheckOut/V5"  -->
<!--    method="post"> -->
<!--    <input type="hidden" name="NeedExtraPaidInfo" value="N"> -->
<!--    <input type="hidden" name="ReturnURL" value="http://localhost:8080/my-app/management/allManagement"> -->
<!--    <input type="hidden" name="BidingCard" value=""> -->
<!--    <input type="hidden" name="CheckMacValue" value="520BDDA52738F43D3D007541D4FA0709871BA6907C8CDBFDF853D7E3D2827A0B"> -->
<!--    <input type="hidden" name="StoreExpireDate" value=""> -->
<!--    <input type="hidden" name="PeriodAmount" value=""> -->
<!--    <input type="hidden" name="PaymentInfoURL" value=""> -->
<!--    <input type="hidden" name="ClientRedirectURL" value=""> -->
<!--    <input type="hidden" name="StoreID" value=""> -->
<!--    <input type="hidden" name="EncryptType" value="1"> -->
<!--    <input type="hidden" name="IgnorePayment" value="WebATM#ATM#CVS#BARCODE"> -->
<!--    <input type="hidden" name="CreditInstallment" value=""> -->
<!--    <input type="hidden" name="PaymentType" value="aio"> -->
<!--    <input type="hidden" name="OrderResultURL" value=""> -->
<!--    <input type="hidden" name="PeriodReturnURL" value=""> -->
<!--    <input type="hidden" name="PlatformID" value=""> -->
<!--    <input type="hidden" name="MerchantMemberID" value=""> -->
<!--    <input type="hidden" name="Frequency" value=""> -->
<!--    <input type="hidden" name="ExpireDate" value=""> -->
<!--    <input type="hidden" name="ItemName" value="TestItem"> -->
<!--    <input type="hidden" name="InvoiceMark" value="N"> -->
<!--    <input type="hidden" name="ExecTimes" value=""> -->
<!--    <input type="hidden" name="ChoosePayment" value="ALL"> -->
<!--    <input type="hidden" name="MerchantID" value="3002599"> -->
<!--    <input type="hidden" name="TradeDesc" value="test Description"> -->
<!--    <input type="hidden" name="ClientBackURL" value="http://localhost:8080/my-app/management/allManagement"> -->
<!--    <input type="hidden" name="PeriodType" value=""> -->
<!--    <input type="hidden" name="CustomField4" value=""> -->
<!--    <input type="hidden" name="Desc_4" value=""> -->
<!--    <input type="text" name="TotalAmount" value=""> -->
<!--    <input type="hidden" name="CustomField3" value=""> -->
<!--    <input type="hidden" name="Desc_3" value=""> -->
<!--    <input type="hidden" name="CustomField2" value=""> -->
<!--    <input type="hidden" name="Desc_2" value=""> -->
<!--    <input type="hidden" name="MerchantTradeDate" value="2017/01/01 08:05:23"> -->
<!--    <input type="hidden" name="CustomField1" value=""> -->
<!--    <input type="hidden" name="Desc_1" value=""> -->
<!--    <input type="hidden" name="ChooseSubPayment" value=""> -->
<!--    <input type="hidden" name="UnionPay" value=""> -->
<!--    <input type="hidden" name="InstallmentAmount" value=""> -->
<!--    <input type="hidden" name="MerchantTradeNo" value="testCompany0004"> -->
<!--    <input type="hidden" name="ItemURL" value=""> -->
<!--    <input type="hidden" name="Remark" value=""> -->
<!--    <input type="hidden" name="DeviceSource" value=""> -->
<!--    <input type="hidden" name="Language" value=""> -->
<!--    <input type="hidden" name="Redeem" value=""> -->
<!--    <input type='submit' value='submit'> -->
<!--    </form>  -->

<!--  <form id="allPayAPIForm" action="https://payment-stage.ecPay.com.tw/Cashier/AioCheckOut/V5" 
 method="post">
 <input type="hidden" name="NeedExtraPaidInfo" value="N">
 <input type="hidden" name="ReturnURL" value="http://localhost:8080/my-app/management/allManagement">
 <input type="hidden" name="BidingCard" value="">
 <input type="hidden" name="CheckMacValue" value="3F530989DE5E8242118B0930F1AF976C782F20BE4972BB8153599F58E9046293">
 <input type="hidden" name="StoreExpireDate" value="">
 <input type="hidden" name="PeriodAmount" value="">
 <input type="hidden" name="PaymentInfoURL" value="">
 <input type="hidden" name="ClientRedirectURL" value="">
 <input type="hidden" name="StoreID" value="">
 <input type="hidden" name="EncryptType" value="1">
 <input type="hidden" name="IgnorePayment" value="WebATM#ATM#CVS#BARCODE">
 <input type="hidden" name="CreditInstallment" value="">
 <input type="hidden" name="PaymentType" value="aio">
 <input type="hidden" name="OrderResultURL" value="">
 <input type="hidden" name="PeriodReturnURL" value="">
 <input type="hidden" name="PlatformID" value="2000132">
 <input type="hidden" name="MerchantMemberID" value="">
 <input type="hidden" name="Frequency" value="">
 <input type="hidden" name="ExpireDate" value="">
 <input type="hidden" name="ItemName" value="TestItem">
 <input type="hidden" name="InvoiceMark" value="N">
 <input type="hidden" name="ExecTimes" value="">
 <input type="hidden" name="ChoosePayment" value="ALL">
 <input type="hidden" name="MerchantID" value="2000132">
 <input type="hidden" name="TradeDesc" value="test Description">
 <input type="hidden" name="ClientBackURL" value="">
 <input type="hidden" name="PeriodType" value="">
 <input type="hidden" name="CustomField4" value="">
 <input type="hidden" name="Desc_4" value="">
 <input type="hidden" name="TotalAmount" value="50">
 <input type="hidden" name="CustomField3" value="">
 <input type="hidden" name="Desc_3" value="">
 <input type="hidden" name="CustomField2" value="">
 <input type="hidden" name="Desc_2" value="">
 <input type="hidden" name="MerchantTradeDate" value="2022/10/08 22:41:48">
 <input type="hidden" name="CustomField1" value="">
 <input type="hidden" name="Desc_1" value="">
 <input type="hidden" name="ChooseSubPayment" value="">
 <input type="hidden" name="UnionPay" value="">
 <input type="hidden" name="InstallmentAmount" value="">
 <input type="hidden" name="MerchantTradeNo" value="test">
 <input type="hidden" name="ItemURL" value="">
 <input type="hidden" name="Remark" value="">
 <input type="hidden" name="DeviceSource" value="">
 <input type="hidden" name="Language" value="">
 <input type="hidden" name="Redeem" value="">
 <input type="submit" name="submit">
 
 <script language="JavaScript">allPayAPIForm.submit()</script></form> -->
 

 <form id="allPayAPIForm" action="https://payment-stage.ecPay.com.tw/Cashier/AioCheckOut/V5" 
 method="post">
 <input type="hidden" name="NeedExtraPaidInfo" value="N">
 <input type="hidden" name="ReturnURL" value="http://localhost:8080/my-app/management/allManagement">
 <input type="hidden" name="BidingCard" value="">
 <input type="hidden" name="CheckMacValue" value="CCB2B662FA6C423DB79E2B641C1D522375A8D0B482BB16440DD795F937CF7538">
 <input type="hidden" name="StoreExpireDate" value="">
 <input type="hidden" name="PeriodAmount" value="">
 <input type="hidden" name="PaymentInfoURL" value="">
 <input type="hidden" name="ClientRedirectURL" value="">
 <input type="hidden" name="StoreID" value="">
 <input type="hidden" name="EncryptType" value="1">
 <input type="hidden" name="IgnorePayment" value="WebATM#ATM#CVS#BARCODE">
 <input type="hidden" name="CreditInstallment" value="">
 <input type="hidden" name="PaymentType" value="aio">
 <input type="hidden" name="OrderResultURL" value="">
 <input type="hidden" name="PeriodReturnURL" value="">
 <input type="hidden" name="PlatformID" value="">
 <input type="hidden" name="MerchantMemberID" value="">
 <input type="hidden" name="Frequency" value="">
 <input type="hidden" name="ExpireDate" value="">
 <input type="hidden" name="ItemName" value="TestItem">
 <input type="hidden" name="InvoiceMark" value="N">
 <input type="hidden" name="ExecTimes" value="">
 <input type="hidden" name="ChoosePayment" value="ALL">
 <input type="hidden" name="MerchantID" value="3002599">
 <input type="hidden" name="TradeDesc" value="test Description">
 <input type="hidden" name="ClientBackURL" value="">
 <input type="hidden" name="PeriodType" value="">
 <input type="hidden" name="CustomField4" value="">
 <input type="hidden" name="Desc_4" value="">
 <input type="text" name="TotalAmount" value="">
 <input type="hidden" name="CustomField3" value="">
 <input type="hidden" name="Desc_3" value="">
 <input type="hidden" name="CustomField2" value="">
 <input type="hidden" name="Desc_2" value="">
 <input type="hidden" name="MerchantTradeDate" value="2017/01/01 08:05:23">
 <input type="hidden" name="CustomField1" value="">
 <input type="hidden" name="Desc_1" value="">
 <input type="hidden" name="ChooseSubPayment" value="">
 <input type="hidden" name="UnionPay" value="">
 <input type="hidden" name="InstallmentAmount" value="">
 <input type="hidden" name="MerchantTradeNo" value="testCompany0004">
 <input type="hidden" name="ItemURL" value="">
 <input type="hidden" name="Remark" value="">
 <input type="hidden" name="DeviceSource" value="">
 <input type="hidden" name="Language" value="">
 <input type="hidden" name="Redeem" value="">
 <input type="submit" value="submit">
 
 </form>

 
   
  
   
                
                
                </div>
            </div>
        </div>
        
<!-- <script language="JavaScript">allPayAPIForm.submit()</script> -->
 

</body>
</html>
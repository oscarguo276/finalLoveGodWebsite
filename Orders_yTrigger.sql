USE [SpringBootDB]
GO
/****** Object:  Trigger [dbo].[order2orderdetail]    Script Date: 2022/10/24 下午 04:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[order2orderdetail]
   ON  [dbo].[orders_y]
   CREATE INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS(SELECT 1 FROM inserted)   
	BEGIN
		SELECT value as 'orderDT' 
		INTO #temp1
		FROM STRING_SPLIT((select inserted.orderDetail from inserted) , '&');


		select 
		inserted.orderID as 'orderID' 
		,SUBSTRING(orderDT , CHARINDEX('i' ,orderDT)+1 ,CHARINDEX('p',orderDT)- CHARINDEX('i' ,orderDT)-1) 	as 'productID'
		, SUBSTRING(orderDT , CHARINDEX('p' ,orderDT)+1 ,CHARINDEX('q',orderDT)-CHARINDEX('p' ,orderDT)-1) 	as 'total'
		,SUBSTRING(orderDT , CHARINDEX('q' ,orderDT)+1 ,len(orderDT)-CHARINDEX('q' ,orderDT))  as 'quanity'
		into #temp2
		from #temp1 , inserted;

		INSERT INTO orderDetail_test3([orderID],[productID],[total],[quanity],[prod_name],[prod_price],[prod_photo])
		select 
		#temp2.orderID ,products.prod_id, #temp2.total , #temp2.quanity 
		 , products.prod_name , products.prod_price, products.prod_photo 
		from #temp2 , products 
		where products.prod_id = #temp2.productID

    -- Insert statements for trigger here

	END
END

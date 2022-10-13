<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>新增商品</title>
    </head>

    <body>
        <jsp:include page="../layout/navbar.jsp"></jsp:include>
        <jsp:include page="../layout/footer.jsp"></jsp:include>
        <div class="backgroundImge">

            <div class="container">
                <h2>新增商品:圖片、名稱、價格</h2>

                <form action="fileUpload" method="post" enctype="multipart/form-data">
                    商品名稱: <input type="text" name="pName" >
                    <br />
                    商品照片: <input type="file" name="file">
                    <br />
                    商品價格: <input type="text" name="pPrice">
                    <br />
                    <input type="submit" value="送出">
                </form>



            </div>
        </div>

    </body>

    </html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- CSS -->
    <jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>
    <!-- /CSS -->
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="dashboard">
                <!-- Left  -->
					<jsp:include page="/WEB-INF/views/admin/layout/left.jsp"></jsp:include>
				<!--end Left  -->
                <div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Xem sản phẩm</p>
                        <a href="${base }/admin/insert_product" style="border-radius: 10px; padding: 8px; background: #15B0C5; color:white">Add New</a>
                        <br>
                        <br>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Id</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Hình ảnh</th>
                                            <th>Giá SP</th>
                                            <th>Trạng thái</th>
                                            <th>Từ khóa</th>
                                            <th>Đã bán</th>
                                            <th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                      <c:forEach items = "${products }" var="product" varStatus="loop">
                                      	<c:if test="${product.status == true }">
											<tr>
												<td data-label="STT">${loop.index + 1}</td>
												<td data-label="Id">${product.id }</td>
												<td data-label="Tên sản phẩm">${product.title }</td>
												<td data-label="Hình ảnh"><img
													src="${base }/upload/${product.avatar}" alt=""></td>
												<td data-label="Giá SP">${product.price }</td>
												<td data-label="status">${product.status }</td>
												<td data-label="Từ khóa">${product.key_word }</td>
												<td data-label="Thời gian">${product.sold }</td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="${base }/admin/edit-product?id=${product.id}"><img
														src="/admin-resource/icon/icon-edit.svg" alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													href="" onClick="Delete(${product.id});"><img src="/admin-resource/icon/icon-trash-black.svg"
														alt=""></a></td>
											</tr>
										</c:if>                                      
                                      </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JS -->
    <jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
    <!-- JS -->
    <script>
    function Delete(id){ 
    	var data = {};
		data["id"] = id;
		$.ajax({
			url : "/admin/delete_product",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),

			dataType : "json",
			/* success la du lieu tu controller tra ve  */
			success : function(jsonResult) {
				if (jsonResult.statusCode == 200) {
					location.reload();
				} else {
					alert(jsonResult.data);
					location.reload();
				}
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 

			}
		});   
    }
    </script>
</body>
</html>
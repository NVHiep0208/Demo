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
						<p class="right__desc">Xem admins</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên</th>
											<th>Email</th>
											<th>Status</th>
											<th>Role</th>
											<th>Xem</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items = "${users }" var="u" varStatus="loop">
											<tr>
												<td data-label="STT">${loop.index + 1}</td>
												<td data-label="Tên">${u.username }</td>
												<!-- <td data-label="Hình ảnh" style="text-align: center;"><img style="width: 50px;height: 50px; border-radius: 100%; object-fit: cover;" src="/admin-resource/icon/profile1.jpg" alt=""></td> -->
												<td data-label="Email">${u.email }</td>
												<td data-label="Status">${u.status }</td>
												<td data-label="Role"><c:forEach items="${u.roles }" var="listRole">
													${listRole.name }
												</c:forEach></td>
												<td data-label="Xem" class="right__iconTable"><a
													href="${base }/edit_admin"><img
														src="/admin-resource/icon/icon-edit.svg" alt=""></a></td>
												<td data-label="Xóa" class="right__iconTable"><a
													href=""><img
														src="/admin-resource/icon/icon-trash-black.svg" alt=""></a></td>
											</tr>
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
	<!-- JS -->
<!-- 	<script>
    function Delete(id){ 
    	var data = {};
		data["id"] = id;
		$.ajax({
			url : "/admin/delete_user",
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
    </script> -->
</body>
</html>
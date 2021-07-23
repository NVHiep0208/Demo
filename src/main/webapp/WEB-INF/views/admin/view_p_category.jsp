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
                        <p class="right__desc">Xem danh mục</p>
                        <a href="${base }/admin/insert_p_category" style="border-radius: 10px; padding: 8px; background: #15B0C5; color:white">Add New</a>
                        <br>
                        <br>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Id</th>
                                            <th>Tiêu đề</th>
                                            <th>Mô tả</th>
                                            <th>Seo</th>
                                            <th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                        <c:forEach items = "${categories }" var="c" varStatus="loop">
											<tr>
												<td data-label="STT">${loop.index + 1}</td>
												<td data-label="Id">${c.id }</td>
												<td data-label="Tiêu đề">${c.name }</td>
												<td data-label="Mô tả">${c.description }</td>
												<td data-label="Seo">${c.seo }</td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="${base }/admin/edit-category?id=${c.id}"><img src="/admin-resource/icon/icon-edit.svg" alt=""></a>
												</td>
												<td data-label="Xoá" class="right__iconTable"><a
													href=""><img src="/admin-resource/icon/icon-trash-black.svg" alt=""></a>
												</td>
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

    <jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>
</body>
</html>
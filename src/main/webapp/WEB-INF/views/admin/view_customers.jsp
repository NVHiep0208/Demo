<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
                        <p class="right__desc">Xem người dùng</p>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th style="text-align: center;">Hình ảnh</th>
                                            <th>Tên</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Địa chỉ</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Hình ảnh" style="text-align: center;"><img style="width: 50px;height: 50px; border-radius: 100%; object-fit: cover;" src="/admin-resource/icon/profile1.jpg" alt=""></td>
                                            <td data-label="Tên">dangthimydung</td>
                                            <td data-label="Email">dangthimydung@gmail.com</td>
                                            <td data-label="Phone">0836730193</td>
                                            <td data-label="Địa chỉ">Cà  Mau</td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="/admin-resource/icon/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Hình ảnh" style="text-align: center;"><img style="width: 50px;height: 50px; border-radius: 100%; object-fit: cover;" src="/admin-resource/icon/profile.jpg" alt=""></td>
                                            <td data-label="Tên">chibaosinger</td>
                                            <td data-label="Email">chibaosinger@gmail.com</td>
                                            <td data-label="Phone">0836730193</td>
                                            <td data-label="Địa Chỉ">Cà  Mau</td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="/admin-resource/icon/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
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
</body>
</html>
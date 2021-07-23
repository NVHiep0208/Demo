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
                        <p class="right__desc">Bảng điều khiển</p>
                        <div class="right__cards">
                            <a class="right__card" href="${base }/admin/view_product">
                                <div class="right__cardTitle">Sản Phẩm</div>
                                <div class="right__cardNumber">72</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="/admin-resource/icon/arrow-right.svg" alt=""></div>
                            </a>
                            <a class="right__card" href="${base }/admin/view_customers">
                                <div class="right__cardTitle">Khách Hàng</div>
                                <div class="right__cardNumber">12</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="/admin-resource/icon/arrow-right.svg" alt=""></div>
                            </a>
                            <a class="right__card" href="${base }/admin/view_p_category">
                                <div class="right__cardTitle">Danh Mục</div>
                                <div class="right__cardNumber">4</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="/admin-resource/icon/arrow-right.svg" alt=""></div>
                            </a>
                            <a class="right__card" href="${base }/admin/view_orders">
                                <div class="right__cardTitle">Đơn Hàng</div>
                                <div class="right__cardNumber">72</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="/admin-resource/icon/arrow-right.svg" alt=""></div>
                            </a>
                        </div>
                        <div class="right__table">
                            <p class="right__tableTitle">Đơn hàng mới</p>
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th style="text-align: left;">Email</th>
                                            <th>Số Hoá Đơn</th>
                                            <th>ID Sản Phẩm</th>
                                            <th>Số Lượng</th>
                                            <th>Kích thước</th>
                                            <th>Trạng Thái</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Email" style="text-align: left;">chibaosinger@gmail.com</td>
                                            <td data-label="Số Hoá Đơn">6577544</td>
                                            <td data-label="ID Sản Phẩm">2</td>
                                            <td data-label="Số Lượng">1</td>
                                            <td data-label="Kích thước">Trung Bình</td>
                                            <td data-label="Trạng Thái"> 
                                                Đã Thanh Toán
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">2</td>
                                            <td data-label="Email" style="text-align: left;">midu@gmail.com</td>
                                            <td data-label="Số Hoá Đơn">4578644</td>
                                            <td data-label="ID Sản Phẩm">4</td>
                                            <td data-label="Số Lượng">2</td>
                                            <td data-label="Kích thước">Nhỏ</td>
                                            <td data-label="Trạng Thái"> 
                                                Đang Xử Lý
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">3</td>
                                            <td data-label="Email" style="text-align: left;">miku@gmail.com</td>
                                            <td data-label="Số Hoá Đơn">2657544</td>
                                            <td data-label="ID Sản Phẩm">3</td>
                                            <td data-label="Số Lượng">5</td>
                                            <td data-label="Kích thước">Lớn</td>
                                            <td data-label="Trạng Thái"> 
                                                Đang Xử Lý
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">4</td>
                                            <td data-label="Email" style="text-align: left;">dangthimydung@gmail.com</td>
                                            <td data-label="Số Hoá Đơn">9659544</td>
                                            <td data-label="ID Sản Phẩm">8</td>
                                            <td data-label="Số Lượng">12</td>
                                            <td data-label="Kích thước">Trung Bình</td>
                                            <td data-label="Trạng Thái"> 
                                                Đang Xử Lý
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <a href="" class="right__tableMore"><p>Xem tất cả các đơn đặt hàng</p> <img src="/admin-resource/icon/arrow-right-black.svg" alt=""></a>
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
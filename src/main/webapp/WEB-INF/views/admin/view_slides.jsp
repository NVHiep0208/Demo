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
                        <p class="right__desc">Xem slides</p>
                        <div class="right__slidesWrapper">
                            <div class="right__slides">
                                <div class="right__slide">
                                    <div class="right__slideTitle">This is the title</div>
                                    <div class="right__slideImage"><img src="/admin-resource/images/slide1.jpg" alt=""></div>
                                    <div class="right__slideIcons">
                                        <a class="right__slideIcon" href="${base }/edit_slide"><img src="/admin-resource/icon/icon-pencil.svg" alt=""></a>
                                        <a class="right__slideIcon" href=""><img src="/admin-resource/icon/icon-trash.svg" alt=""></a>
                                    </div>
                                </div>
                                <div class="right__slide">
                                    <div class="right__slideTitle">This is the title</div>
                                    <div class="right__slideImage"><img src="/admin-resource/images/slide2.jpg" alt=""></div>
                                    <div class="right__slideIcons">
                                        <a class="right__slideIcon" href="${base }/edit_slide"><img src="/admin-resource/icon/icon-pencil.svg" alt=""></a>
                                        <a class="right__slideIcon" href=""><img src="/admin-resource/icon/icon-trash.svg" alt=""></a>
                                    </div>
                                </div>
                                <div class="right__slide">
                                    <div class="right__slideTitle">This is the title</div>
                                    <div class="right__slideImage"><img src="/admin-resource/images/slide3.jpg" alt=""></div>
                                    <div class="right__slideIcons">
                                        <a class="right__slideIcon" href="${base }/edit_slide"><img src="/admin-resource/icon/icon-pencil.svg" alt=""></a>
                                        <a class="right__slideIcon" href=""><img src="/admin-resource/icon/icon-trash.svg" alt=""></a>
                                    </div>
                                </div>
                                <div class="right__slide">
                                    <div class="right__slideTitle">This is the title</div>
                                    <div class="right__slideImage"><img src="/admin-resource/images/slide4.jpg" alt=""></div>
                                    <div class="right__slideIcons">
                                        <a class="right__slideIcon" href="${base }/edit_slide"><img src="/admin-resource/icon/icon-pencil.svg" alt=""></a>
                                        <a class="right__slideIcon" href=""><img src="/admin-resource/icon/icon-trash.svg" alt=""></a>
                                    </div>
                                </div>
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
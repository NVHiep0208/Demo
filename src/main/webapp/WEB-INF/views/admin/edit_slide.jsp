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
                        <p class="right__desc"> Chỉnh sửa slide</p>
                        <div class="right__formWrapper">
                            <form action="" method="post">
                                <div class="right__inputWrapper">
                                    <label for="name">Tên slide</label>
                                    <input type="text" placeholder="Tên slide" value="This is the title">
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="url">Url</label>
                                    <input type="text" placeholder="Url" value="Url">
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="desc">Mô tả</label>
                                    <textarea name="" id="" cols="30" rows="10" placeholder="Mô tả">This is an article</textarea>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="image">Hình ảnh</label>
                                    <input type="file">
                                </div>
                                <div class="right__inputImageReview"><img src="/admin-resource/images/slide1.jpg" alt=""></div>
                                <button class="btn" type="submit">Cập nhật</button>
                            </form>
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
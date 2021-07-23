<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
                        <p class="right__desc">Thêm Category</p>
                        <div class="right__formWrapper">
                            <sf:form action="/add_category" method="post" modelAttribute="category">
                                <div class="right__inputWrapper">
                                    <label for="title">Tiêu đề</label>
                                    <sf:input type="text" placeholder="Tiêu đề" path="name"/>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="desc">Mô tả</label>
                                    <sf:textarea name="" id="" cols="30" rows="10" placeholder="Mô tả" path="description"></sf:textarea>
                                </div>
                                <button class="btn" type="submit">Thêm</button>
                            </sf:form>
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
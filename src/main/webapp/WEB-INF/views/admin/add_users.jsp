<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
                        <p class="right__desc">Thêm User</p>
                        <div class="right__formWrapper">
                            <sf:form action="${base }/admin/add_users" method="post" modelAttribute="user">
                                <div class="right__inputWrapper">
                                    <label for="name">Tên user</label>
                                    <sf:input type="text" placeholder="Tên admin" path="username"/>
                                </div>
                               	<%-- <div class="right__inputWrapper">
                                    <label for="p_category">Role</label>
                                    <sf:select path="roles.id">
                                        <sf:options items="${roles }" itemValue="id" itemLabel="name"/>
                                    </sf:select>
                                </div> --%>
                                <div class="right__inputWrapper">
                                    <label for="email">Email</label>
                                    <sf:input type="text" placeholder="Email" path="email"/>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="password">Mật khẩu</label>
                                    <sf:input type="text" placeholder="Mật khẩu" path="password"/>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="image">Hình ảnh</label>
                                    <input type="file">
                                </div>
                                <button class="btn" type="submit">Save</button>
                                <br>
                               <a href="${base }/admin/view_users" class="btn"
									role="button" aria-pressed="true" style="text-align: center; line-height: 42px;">Back to list</a>
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
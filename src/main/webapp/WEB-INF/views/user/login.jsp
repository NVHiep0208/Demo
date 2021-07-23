<jsp:include page="/WEB-INF/views/user/layout/utf8.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="/user/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="/user/images/apple-touch-icon.png">

<!-- CSS -->
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
<!-- /CSS -->


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Start Main Top -->
	<!-- Top Search  -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
	<!--end search  -->
	<!-- End Main Top -->
	<!-- Start Contact Us  -->
	<div class="contact-box-main">

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-4">Login</h3>
						</div>
						<div class="card-body">
							<form method="POST" action="/perform_login">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<%-- <c:if test="${not empty param.login_error}">
									<div class="alert alert-danger" role="alert">Login
										attempt was not successful, try again.</div>
								</c:if> --%>
								<div class="form-group">
									<label class="small mb-1" for="inputEmailAddress">User Name</label>
									<input class="form-control py-4" name="username" type="text"
										placeholder="Enter user name" style="height: 50px;" />
								</div>
								<div class="form-group">
									<label class="small mb-1" for="inputPassword">Password</label>
									<input class="form-control py-4" type="password"
										placeholder="Enter password" name="password"
										style="height: 50px;" />
								</div>
								<c:if test="${not empty param.login_error}">
									<div class="alert alert-danger" role="alert">Login
										attempt was not successful, try again.</div>
								</c:if>
								<div class="form-group">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" id="rememberPasswordCheck"
											type="checkbox" /> <label class="custom-control-label"
											for="rememberPasswordCheck">Remember password</label>
									</div>
								</div>
								<div
									class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
									<a class="small" href="${base }/forgot/password"
										style="color: #007bff; font-weight: bold;">Forgot
										Password?</a>
									<button class="contact2-form-btn" style="background-color: #007bff; border:2px #007bff; font-size:17px;">Login</button>
								</div>
							</form>
						</div>
						<div class="card-footer text-center">
							<div class="small">
								<a href="${base }/register"
									style="color: #007bff; font-weight: bold;">Need an account?
									Sign up!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- start footer -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- end footer -->

	<!-- JS  -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->

</body>

</html>
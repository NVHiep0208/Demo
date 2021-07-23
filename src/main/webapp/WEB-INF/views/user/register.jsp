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
				<div class="col-lg-7">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-4">Create
								Account</h3>
						</div>

						<c:if test="${not empty error}">
							<h5 class="h7 text-primary">${registerSuccess}</h5>
						</c:if>
						<div class="card-body">
							<form method="post" action="/register">
								<div class="form-group">
									<label class="small mb-1" for="inputEmailAddress">Email</label>
									<input class="form-control py-4" name="email" type="email"
										aria-describedby="emailHelp" placeholder="Enter email address"
										style="height: 50px;" />
								</div>
								<c:if test="${not empty error}">
									<div class="h9 text-danger">${error }</div>
								</c:if>

								<div class="form-group">
									<label class="small mb-1" for="inputEmailAddress">UserName</label>
									<input class="form-control py-4" name="username" type="text"
										aria-describedby="emailHelp" placeholder="Enter email address"
										style="height: 50px;" />
								</div>
								<c:if test="${not empty username}">
									<div class="h9 text-danger">${username }</div>
								</c:if>
								<div class="form-group">
									<label class="small mb-1" for="inputPassword">Password</label>
									<input class="form-control py-4" name="password"
										type="password" placeholder="Enter password"
										style="height: 50px;" />
								</div>
								<c:if test="${not empty pass}">
									<div class="h9 text-danger">${pass }</div>
								</c:if>
								<div class="form-group">
									<label class="small mb-1" for="inputConfirmPassword">Confirm
										Password</label> <input class="form-control py-4"
										name="confirmPassword" type="password"
										placeholder="Confirm password" style="height: 50px;" />
								</div>
								<c:if test="${not empty repass}">
									<div class="h9 text-danger">${repass }</div>
								</c:if>
								<%-- <div class="form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Password</label>
											<input class="form-control py-4" name="password"
												type="password" placeholder="Enter password"
												style="height: 50px;" />
										</div>
										<c:if test="${not empty error}">
											<h5 class="h9 text-danger">${NPassE }</h5>
										</c:if>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="small mb-1" for="inputConfirmPassword">Confirm
												Password</label> <input class="form-control py-4"
												name="confirmPassword" type="password"
												placeholder="Confirm password" style="height: 50px;" />
										</div>
									</div>
								</div> --%>

								<div class="form-group mt-4 mb-0" style= "margin-left: 240px;">
									<button style="background-color: red; border:1px red; cursor: pointer; width: 100px; font-size: 18px;">Register</button>
								</div>
							</form>
						</div>
						<div class="card-footer text-center">
							<div class="small">
								<a href="${base }/login"
									style="color: #007bff; font-weight: bold;">Have an account?
									Go to login</a>
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
	<script>
		function SaveRegister() {
			var data = {};
			data["firstName"] = $("#inputFirstName").val();
			data["lastName"] = $("#inputLastName").val();
			data["email"] = $("#inputEmailAddress").val();
			data["password"] = $("#inputPassword").val();
			data["confirmPassword"] = $("#inputConfirmPassword").val();
			$.ajax({
				url : "/register-ajax",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				/* success la du lieu tu controller tra ve  */
				success : function(jsonResult) {
					if (jsonResult.statusCode == 200) {
						alert(jsonResult.statusCode);
					} else {
						alert(jsonResult.data);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
	</script>
</body>

</html>
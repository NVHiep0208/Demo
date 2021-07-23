<jsp:include page="/WEB-INF/views/user/layout/utf8.jsp"></jsp:include>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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

	<!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Contact Us</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${base}/index">Home</a></li>
						<li class="breadcrumb-item active">Contact Us</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Contact Us  -->
	<div class="contact-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-12">
					<div class="contact-info-left">
						<h2>CONTACT INFO</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Praesent urna diam, maximus ut ullamcorper quis, placerat id
							eros. Duis semper justo sed condimentum rutrum. Nunc tristique
							purus turpis. Maecenas vulputate.</p>
						<ul>
							<li>
								<p>
									<i class="fas fa-map-marker-alt"></i>Address: Michael I. Days
									3756 <br>Preston Street Wichita,<br> KS 67213
								</p>
							</li>
							<li>
								<p>
									<i class="fas fa-phone-square"></i>Phone: <a
										href="tel:+1-888705770">+1-888 705 770</a>
								</p>
							</li>
							<li>
								<p>
									<i class="fas fa-envelope"></i>Email: <a
										href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-8 col-sm-12">
					<div class="contact-form-right">
						<h2>GET IN TOUCH</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed odio justo, ultrices ac nisl sed, lobortis porta elit. Fusce
							in metus ac ex venenatis ultricies at cursus mauris.</p>

						<!-- form contact -->
						<%-- <sf:form id="contactForm" method="post" action="/contact-us" modelAttribute="contact">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<sf:input type="text" class="form-control" id="name" name="name"
											placeholder="Your Name" path="name"
											data-error="Please enter your name"/>
										<div class="help-block with-errors"></div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<sf:input type="text" placeholder="Your Email" id="email"
											class="form-control" name="email" path="email"
											data-error="Please enter your email"/>
										<div class="help-block with-errors">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<sf:input type="text" class="form-control" id="subject"
											name="subject" placeholder="Subject" path="object"
											data-error="Please enter your Subject"/>
										<div class="help-block with-errors">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="form-control" id="message"
											placeholder="Your Message" rows="4"
											data-error="Write your message" name="message"></textarea>
										<div class="help-block with-errors"></div>
									</div>
									<div class="submit-button text-center">
										<button class="btn hvr-hover" id="submit" type="submit">Send
											Message</button> 
										<div id="msgSubmit" class="h3 text-center hidden"></div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</sf:form> --%>
						<!--  Spring form-->
						<%-- <sf:form method="post" action="/contact1" modelAttribute="contact">
							<div class="mb-3">
								<label for="exampleInputName" class="form-label">Name</label> <sf:input
									type="text" class="form-control" id="name" name="name"
									path="name" placeholder="Your Name" aria-describedby="nameHelp"/>

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail" class="form-label">Email</label>
								<sf:input type="text" class="form-control" id="email"
									name="email" path="email" placeholder="Email"/>
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="subject" class="form-label">Subject</label> <sf:input
									type="text" class="form-control" id="subject" name="subject"
									path="object" placeholder="Your Subject"/>
							</div>
							<div class="mb-3">
								<!-- <label for="message" class="form-label">Message</label> <input
								type="text" class="form-control" id="ajmessage" name="message"
								path="content" placeholder="Message"> -->
								<sf:textarea class="form-control" id="message" path="content"
									placeholder="Your Message" rows="4"
									data-error="Write your message" name="message"></sf:textarea>
							</div>
							<button type="button" class="btn btn-primary">Submit</button>
						</sf:form> --%>
						<!-- / Spring form -->

						<!--ajax  -->
						<div class="mb-3">
							<label for="exampleInputName" class="form-label">Name</label> <input
								type="text" class="form-control" id="ajname" name="name"
								path="name" placeholder="Your Name" aria-describedby="nameHelp">

						</div>
						<div class="mb-3">
							<label for="exampleInputEmail" class="form-label">Email</label> <input
								type="text" class="form-control" id="ajemail" name="email"
								path="email" placeholder="Email">
							<div id="emailHelp" class="form-text">We'll never share
								your email with anyone else.</div>
						</div>
						<div class="mb-3">
							<label for="subject" class="form-label">Subject</label> <input
								type="text" class="form-control" id="ajsubject" name="subject"
								path="subject" placeholder="Your Subject">
						</div>
						<div class="mb-3">
							<!-- <label for="message" class="form-label">Message</label> <input
								type="text" class="form-control" id="ajmessage" name="message"
								path="content" placeholder="Message"> -->
								<label for="message" class="form-label">Your Message</label>
								<textarea class="form-control" id="ajmessage" path="message"
									placeholder="Your Message" rows="4"
									data-error="Write your message" name="message"></textarea>
						</div>
						<%-- <div class="mb-3 form-check">
								<sf:input type="checkbox" class="form-check-input"
									id="exampleCheck1"/> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div> --%>
						<button type="button" class="btn btn-primary"
							onClick="SaveContact();">Submit</button>
						<!-- /ajax -->
						<!-- / end form contact -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Cart -->

	<!-- start footer -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- end footer -->

	<!-- JS  -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
	<script>
		function SaveContact() {
			var data = {};
			data["name"] = $("#ajname").val();
			data["email"] = $("#ajemail").val();
			data["subject"] = $("#ajsubject").val();
			data["message"] = $("#ajmessage").val();
			$.ajax({
				url : "/contact-ajax",
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
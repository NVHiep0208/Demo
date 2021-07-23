<jsp:include page="/WEB-INF/views/user/layout/utf8.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<h2>Shop Detail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${base}/shop">Shop</a></li>
						<li class="breadcrumb-item active">Shop Detail</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Detail  -->
	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div id="carousel-example-1"
						class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<%-- <div class="carousel-item active">
								<img class="d-block w-100"
									src="${base }/upload/${product.avatar}" alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="/user/images/big-img-02.jpg"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="/user/images/big-img-03.jpg"
									alt="Third slide">
							</div> --%>
							<c:forEach items="${product.product_images }" var="listImg">
								<div class="carousel-item active">
									<img class="d-block w-100" src="${base }/upload/${listImg.getPath() }"
										alt="First slide">
								</div>
							</c:forEach>
						</div>
						<a class="carousel-control-prev" href="#carousel-example-1"
							role="button" data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example-1"
							role="button" data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
						<ol class="carousel-indicators">
							<!-- <li data-target="#carousel-example-1" data-slide-to="0"
								class="active"><img class="d-block w-100 img-fluid"
								src="/user/images/smp-img-01.jpg" alt="" /></li>
							<li data-target="#carousel-example-1" data-slide-to="1"><img
								class="d-block w-100 img-fluid"
								src="/user/images/smp-img-02.jpg" alt="" /></li>
							<li data-target="#carousel-example-1" data-slide-to="2"><img
								class="d-block w-100 img-fluid"
								src="/user/images/smp-img-03.jpg" alt="" /></li> -->
							<c:forEach items="${product.product_images }" var="listImg">
								<li data-target="#carousel-example-1" data-slide-to="0"
									class="active"><img class="d-block w-100 img-fluid"
									src="${base }/upload/${listImg.getPath() }" alt="" /></li>
							</c:forEach>
						</ol>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="single-product-details">
						<h2>${product.title }</h2>
						<h3>${product.detailDescription }</h3>
						<h5>
							<del>${product.price }</del>
							${product.priceSale }
						</h5>
						<p class="available-stock">
							<span> More than ${product.quantity } available / <a
								href="#">${product.sold } sold </a></span>
						<p>
						<h4>Description:</h4>
						<p>${product.detailDescription }</p>
						<ul>
							<li>
								<div class="form-group size-st">
									<label class="size-label">Size</label> <select id="basic"
										class="selectpicker show-tick form-control">
										<option value="0">Size</option>
										<option value="0">S</option>
										<option value="1">M</option>
										<option value="1">L</option>
										<option value="1">XL</option>
										<option value="1">XXL</option>
										<option value="1">3XL</option>
										<option value="1">4XL</option>
									</select>
								</div>
							</li>
							<!-- Quantity -->
							<li>
								<div class="form-group quantity-box">
									<label class="control-label"></label> <input
										class="form-control" value="${product.quantity }" min="0"
										max="20" type="number">
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn">
								<a class="btn hvr-hover" data-fancybox-close=""
									href="${base}/shop">Buy New</a>
								<!-- Add to cart -->
								<a class="btn hvr-hover" data-fancybox-close=""
									href="${base}/cart">Add to cart</a>
							</div>
						</div>

						<div class="add-to-btn">
							<div class="add-comp">
								<a class="btn hvr-hover" href="${base}/wishlist"><i
									class="fas fa-heart"></i> Add to wishlist</a> <a
									class="btn hvr-hover" href="#"><i class="fas fa-sync-alt"></i>
									Add to Compare</a>
							</div>
							<div class="share-bar">
								<a class="btn hvr-hover" href="#"><i class="fab fa-facebook"
									aria-hidden="true"></i></a> <a class="btn hvr-hover" href="#"><i
									class="fab fa-google-plus" aria-hidden="true"></i></a> <a
									class="btn hvr-hover" href="#"><i class="fab fa-twitter"
									aria-hidden="true"></i></a> <a class="btn hvr-hover" href="#"><i
									class="fab fa-pinterest-p" aria-hidden="true"></i></a> <a
									class="btn hvr-hover" href="#"><i class="fab fa-whatsapp"
									aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row my-5">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>Featured Products</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed sit amet lacus enim.</p>
					</div>
					<div class="featured-products-box owl-carousel owl-theme">
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-01.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>${product.price }</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-02.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-03.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-04.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-01.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-02.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-03.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="/user/images/img-pro-04.jpg" class="img-fluid"
										alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="${base}/wishlist" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart" href="${base}/cart">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
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


</body>

</html>
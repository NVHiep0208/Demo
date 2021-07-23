<jsp:include page="/WEB-INF/views/user/layout/utf8.jsp"></jsp:include>
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
	<!-- Start Slider -->
	<div id="slides-shop" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left"><img src="/user/images/banner-01.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${base}/shop">Shop New</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-center"><img src="/user/images/banner-02.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${base}/shop">Shop New</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-right"><img src="/user/images/banner-03.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${base}/shop">Shop New</a>
							</p>
						</div>
					</div>
				</div></li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right"
				aria-hidden="true"></i></a> <a href="#" class="prev"><i
				class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End Slider -->

	<!-- Start Categories  -->
	<div class="categories-shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/t-shirts-img.jpg" alt="" />
						<a class="btn hvr-hover" href="${base}/shop">T-shirts</a>
					</div>
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/shirt-img.jpg" alt="" />
						<a class="btn hvr-hover" href="${base}/shop">Shirt</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/wallet-img.jpg" alt="" />
						<a class="btn hvr-hover" href="${base}/shop">Wallet</a>
					</div>
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/women-bag-img.jpg" alt="" />
						<a class="btn hvr-hover" href="${base}/shop">Bags</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/shoes-img.jpg" alt="" />
						<a class="btn hvr-hover" href="${base}/shop">Shoes</a>
					</div>
					<div class="shop-cat-box">
						<img class="img-fluid" src="/user/images/women-shoes-img.jpg"
							alt="" /> <a class="btn hvr-hover" href="${base}/shop">Women Shoes</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Categories -->

	<!-- Start Products  -->
	<div class="products-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>Featured Products</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed sit amet lacus enim.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">All</button>
							<button data-filter=".top-featured">Top featured</button>
							<button data-filter=".best-seller">Best seller</button>
						</div>
					</div>
				</div>
			</div>

			<div class="row special-list">
				<div class="col-lg-3 col-md-6 special-grid best-seller">
					<div class="products-single fix">
						<div class="box-img-hover">
							<div class="type-lb">
								<p class="sale">Sale</p>
							</div>
							<img src="/user/images/img-pro-01.jpg" class="img-fluid"
								alt="Image">
							<div class="mask-icon">
								<ul>
									<li><a href="${base}/shop-detail" data-toggle="tooltip"
										data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="Compare"><i
											class="fas fa-sync-alt"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="${base}/wishlist" title="Add to Wishlist"><i
											class="far fa-heart"></i></a></li>
								</ul>
								<a class="cart" href="${base}/cart">Add to Cart</a>
							</div>
						</div>
						<div class="why-text">
							<h4>Lorem ipsum dolor sit amet</h4>
							<h5>$7.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 special-grid top-featured">
					<div class="products-single fix">
						<div class="box-img-hover">
							<div class="type-lb">
								<p class="new">New</p>
							</div>
							<img src="/user/images/img-pro-02.jpg" class="img-fluid"
								alt="Image">
							<div class="mask-icon">
								<ul>
									<li><a href="${base}/shop-detail" data-toggle="tooltip"
										data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="Compare"><i
											class="fas fa-sync-alt"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="${base}/wishlist" title="Add to Wishlist"><i
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

				<div class="col-lg-3 col-md-6 special-grid top-featured">
					<div class="products-single fix">
						<div class="box-img-hover">
							<div class="type-lb">
								<p class="sale">Sale</p>
							</div>
							<img src="/user/images/img-pro-03.jpg" class="img-fluid"
								alt="Image">
							<div class="mask-icon">
								<ul>
									<li><a href="${base}/shop-detail" data-toggle="tooltip"
										data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
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
							<h5>$10.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 special-grid best-seller">
					<div class="products-single fix">
						<div class="box-img-hover">
							<div class="type-lb">
								<p class="sale">Sale</p>
							</div>
							<img src="/user/images/img-pro-04.jpg" class="img-fluid"
								alt="Image">
							<div class="mask-icon">
								<ul>
									<li><a href="${base}/shop-detail" data-toggle="tooltip"
										data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="Compare"><i
											class="fas fa-sync-alt"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="${base}/wishlist" title="Add to Wishlist"><i
											class="far fa-heart"></i></a></li>
								</ul>
								<a class="cart" href="${base}/cart">Add to Cart</a>
							</div>
						</div>
						<div class="why-text">
							<h4>Lorem ipsum dolor sit amet</h4>
							<h5>$15.79</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Products  -->

	<!-- Start Blog  -->
	<div class="latest-blog">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>latest blog</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed sit amet lacus enim.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="/user/images/blog-img.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>Fusce in augue non nisi fringilla</h3>
								<p>Nulla ut urna egestas, porta libero id, suscipit orci.
									Quisque in lectus sit amet urna dignissim feugiat. Mauris
									molestie egestas pharetra. Ut finibus cursus nunc sed mollis.
									Praesent laoreet lacinia elit id lobortis.</p>
							</div>
							<ul class="option-blog">
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Likes"><i
										class="far fa-heart"></i></a></li>
								<li><a href="${base}/shop-detail" data-toggle="tooltip"
									data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Comments"><i
										class="far fa-comments"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="/user/images/blog-img-01.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>Fusce in augue non nisi fringilla</h3>
								<p>Nulla ut urna egestas, porta libero id, suscipit orci.
									Quisque in lectus sit amet urna dignissim feugiat. Mauris
									molestie egestas pharetra. Ut finibus cursus nunc sed mollis.
									Praesent laoreet lacinia elit id lobortis.</p>
							</div>
							<ul class="option-blog">
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Likes"><i
										class="far fa-heart"></i></a></li>
								<li><a href="${base}/shop-detail" data-toggle="tooltip"
									data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Comments"><i
										class="far fa-comments"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="/user/images/blog-img-02.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>Fusce in augue non nisi fringilla</h3>
								<p>Nulla ut urna egestas, porta libero id, suscipit orci.
									Quisque in lectus sit amet urna dignissim feugiat. Mauris
									molestie egestas pharetra. Ut finibus cursus nunc sed mollis.
									Praesent laoreet lacinia elit id lobortis.</p>
							</div>
							<ul class="option-blog">
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Likes"><i
										class="far fa-heart"></i></a></li>
								<li><a href="${base}/shop-detail" data-toggle="tooltip"
									data-placement="right" title="Views"><i class="fas fa-eye"></i></a></li>
								<li><a href="#" data-toggle="tooltip"
									data-placement="right" title="Comments"><i
										class="far fa-comments"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Blog  -->

	<!-- start footer -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- end footer -->

	<!-- JS  -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>

</html>
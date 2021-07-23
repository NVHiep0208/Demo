<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="main-top">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<div class="text-slid-box">
					<div id="offer-box" class="carouselTicker">
						<ul class="offer-box">
							<li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
							<li><i class="fab fa-opencart"></i> 50% - 80% off on Fashion
							</li>
							<li><i class="fab fa-opencart"></i> 20% off Entire Purchase
								Promo code: offT20</li>
							<li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
							<li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
							<li><i class="fab fa-opencart"></i> 50% - 80% off on Fashion
							</li>
							<li><i class="fab fa-opencart"></i> 20% off Entire Purchase
								Promo code: offT20</li>
							<li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<div class="custom-select-box">
					
					<ul class="selectpicker show-tick form-control">
						<li><a href="${base }/logout">Log out</a></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<div class="right-phone-box">
					<p>
						Call US : <a href="#"> +(84) 9821 222 888</a>
					</p>
				</div>
				<div class="our-link">
					<ul>
						<li><a href="${base}/my-account">My Account</a></li>
						<li><a href="${base }/login">Login</a></li>
						<li><a href="${base}/contact-us">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
	<!-- Start Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
		<div class="container">
			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar-menu" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="${base}/index"><img
					src="/user/images/logo.png" class="logo" alt=""></a>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li class="nav-item active"><a class="nav-link"
						href="${base}/index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="${base}/about">About
							Us</a></li>
					<li class="dropdown megamenu-fw"><a href="${base}/shop"
						class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
						<ul class="dropdown-menu megamenu-content" role="menu">
							<li>
								<div class="row">
									<div class="col-menu col-md-3">
										<h6 class="title">Top</h6>
										<div class="content">
											<%-- <ul class="menu-col">
												<li><a href="${base}/shop">Jackets</a></li>
												<li><a href="${base}/shop">Shirts</a></li>
												<li><a href="${base}/shop">Sweaters & Cardigans</a></li>
												<li><a href="${base}/shop">T-shirts</a></li>
											</ul> --%>
											<c:forEach items = "${categories }" var = "c">
												<ul class="menu-col">
													<li><a href="${base}/shop/${c.seo}">${c.name }</a></li>
												</ul>
											</c:forEach>
										</div>
									</div>
									<!-- end col-3 -->
									<div class="col-menu col-md-3">
										<h6 class="title">Bottom</h6>
										<div class="content">
											<c:forEach items = "${categories }" var = "c">
												<ul class="menu-col">
													<li><a href="${base}/shop/${c.seo}">${c.name }</a></li>
												</ul>
											</c:forEach>
										</div>
									</div>
									<!-- end col-3 -->
									<div class="col-menu col-md-3">
										<h6 class="title">Clothing</h6>
										<div class="content">
											<c:forEach items = "${categories }" var = "c">
												<ul class="menu-col">
													<li><a href="${base}/shop/${c.seo}">${c.name }</a></li>
												</ul>
											</c:forEach>
										</div>
									</div>
									<div class="col-menu col-md-3">
										<h6 class="title">Accessories</h6>
										<div class="content">
											<c:forEach items = "${categories }" var = "c">
												<ul class="menu-col">
													<li><a href="${base}/shop/${c.seo}">${c.name }</a></li>
												</ul>
											</c:forEach>
										</div>
									</div>
									<!-- end col-3 -->
								</div> <!-- end row -->
							</li>
						</ul></li>
					<li class="dropdown"><a href="#"
						class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
						<ul class="dropdown-menu">
							<li><a href="${base}/shop">Shop</a></li>
							<li><a href="${base}/cart">Cart</a></li>
							<li><a href="${base}/checkout">Checkout</a></li>
							<li><a href="${base}/my-account">My Account</a></li>
							<li><a href="${base}/wishlist">Wishlist</a></li>
							
						</ul></li>
					<li class="nav-item"><a class="nav-link"
						href="${base}/service">Our Service</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${base}/contact-us">Contact Us</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->

			<!-- Start Atribute Navigation -->
			<!-- SEARCH -->
			<div class="attr-nav">
				<ul>
					<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
					<li class="side-menu"><a href="#"> <i
							class="fa fa-shopping-bag"></i> <span class="badge" id="totalItemsInCart">${totalItems }</span>
					</a></li>
				</ul>
			</div>
			<!-- End Atribute Navigation -->
		</div>
		<!-- Start Side Menu -->
		<div class="side">
			<a href="#" class="close-side"><i class="fa fa-times"></i></a>
			<li class="cart-box">
				<ul class="cart-list">
					<c:forEach items="${cart.cartItems}" var="item">
						<li><a href="${base}/cart" class="photo"><img
								src="${base }/upload/${item.productAvatar}" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="${base}/cart">${item.productName } </a>
							</h6>
							<p>
								${item.quanlity }x - <span class="price">${item.priceUnit }</span>
							</p></li>
					</c:forEach>
					<li class="total"><a href="${base}/cart"
						class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
						class="float-right"><strong>Total</strong>: $180.00</span></li>
				</ul>
			</li>
		</div>
		<!-- End Side Menu -->
	</nav>
	<!-- End Navigation -->
</header>
<!-- Start Top Search -->
<div class="top-search">
	<div class="container">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-search"></i></span> 
			<form action="${base }/search" method ="get"><input type="text" class="form-control" placeholder="Search" aria-label="Search" name="searchText"></form>
			<span
				class="input-group-addon close-search"><i class="fa fa-times"></i></span>
		</div>
	</div>
</div>
<!-- End Top Search -->
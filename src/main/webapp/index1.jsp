
<%
	if(session.getAttribute("email")==null){
		response.sendRedirect("login.html");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" href="Cake-Baker/img/fav-icon.png" type="image/x-icon" />
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Cake - Bakery</title>

	<!-- Icon css link -->
	<link href="Cake-Baker/css/font-awesome.min.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/linearicons/style.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/flat-icon/flaticon.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/stroke-icon/style.css" rel="stylesheet">
	<!-- Bootstrap -->
	<link href="Cake-Baker/css/bootstrap.min.css" rel="stylesheet">

	<!-- Rev slider css -->
	<link href="Cake-Baker/vendors/revolution/css/settings.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/revolution/css/layers.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/revolution/css/navigation.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/animate-css/animate.css" rel="stylesheet">

	<!-- Extra plugin css -->
	<link href="Cake-Baker/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/datetime-picker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/nice-select/css/nice-select.css" rel="stylesheet">
	<link href="Cake-Baker/vendors/magnifc-popup/magnific-popup.css" rel="stylesheet">

	<link href="Cake-Baker/css/style.css" rel="stylesheet">
	<link href="Cake-Baker/css/responsive.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>

	<!--================Main Header Area =================-->
	<header class="box_header_four">
		<div class="box_menu_four">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand" href="index.html"><img src="Cake-Baker/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="my_toggle_menu">
							<span></span>
							<span></span>
							<span></span>
						</span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav justify-content-end">
							<li><a href="#">Home</a></li>
							<li><a href="shop.html">Shop</a></li>
							<li class="dropdown submenu">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
									aria-haspopup="true" aria-expanded="false">About Us</a>
								<ul class="dropdown-menu">
									<li><a href="about-us.html">About Us</a></li>
									<!-- <li><a href="our-team.html">Our Chefs</a></li>
										<li><a href="testimonials.html">Testimonials</a></li> -->
								</ul>
							</li>
							<li class="dropdown submenu">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
									aria-haspopup="true" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li><a href="service.html">Services</a></li>
									<li class="dropdown submenu">
										<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
											aria-haspopup="true" aria-expanded="false">Gallery</a>
										<ul class="dropdown-menu">
											<li><a href="portfolio.html">- Gallery Classic</a></li>
											
										</ul>
									</li>
									<!-- <li><a href="faq.html">Faq</a></li>
										<li><a href="what-we-make.html">What we make</a></li> -->
									<li><a href="special.html">Special Recipe</a></li>
									<!-- <li><a href="404.html">404 page</a></li>
										<li><a href="comming-soon.html">Coming Soon page</a></li> -->
								</ul>
							</li>
							<!-- <li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
									<ul class="dropdown-menu">
										<li><a href="blog.html">Blog with sidebar</a></li>
										<li><a href="blog-2column.html">Blog 2 column</a></li>
										<li><a href="single-blog.html">Blog details</a></li>
									</ul>
								</li> -->
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="feedback.html">Feedback</a></li>
							<li class="search_icon"><a class="popup-with-zoom-anim" href="#test-search"><i
										class="icon icon-Search"></i></a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!--================End Main Header Area =================-->

	<!--================Slider Area =================-->
	<section class="main_slider_area">
		<div id="main_slider4" class="rev_slider" data-version="5.3.1.6">
			<ul>
				<li data-index="rs-1587" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
					data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
					data-thumb="Cake-Baker/img/home-slider/slider-9.jpg" data-rotate="0" data-saveperformance="off"
					data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5=""
					data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
					<!-- MAIN IMAGE -->
					<img src="Cake-Baker/img/home-slider/slider-9.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>

					<!-- LAYER NR. 1 -->
					<div class="slider_text_box">
						<div class="tp-caption tp-resizeme first_text pink"
							data-x="['right','right','left','15','15','15']"
							data-hoffset="['-150','0','15','15','15','0']" data-y="['top','top','top','top']"
							data-voffset="['320','320','320','245','200']" data-fontsize="['60','60','60','40','30']"
							data-lineheight="['76','76','76','50','40']"
							data-width="['780','740','780','780','700','400']" data-height="none"
							data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
							data-textAlign="['left','left','left','left']">Freshly Baked Delights... <br> Made with Love
							& Care</div>

						<div class="tp-caption tp-resizeme secand_text black"
							data-x="['right','right','left','15','15','15']"
							data-hoffset="['0','110','15','15','15','0']" data-y="['top','top','top','top']"
							data-voffset="['485','485','485','360','300','290']"
							data-fontsize="['20','20','20','20','16']" data-lineheight="['28','28','28','28']"
							data-width="['620','620','620','620','500','400']" data-height="none"
							data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-transform_idle="o:1;"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
							Indulge in our freshly baked cakes and pastries made with high-quality ingredients. From
							rich chocolate cakes to delicate breads, we bring sweetness to every occasion.
						</div>

						
					</div>
				</li>
				<li data-index="rs-1588" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
					data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
					data-thumb="Cake-Baker/img/home-slider/slider-10.jpg" data-rotate="0" data-saveperformance="off"
					data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5=""
					data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
					<!-- MAIN IMAGE -->
					<img src="Cake-Baker/img/home-slider/slider-10.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
					<!-- LAYERS -->
					<!-- LAYERS -->

					<!-- LAYER NR. 1 -->
					<div class="slider_text_box">
						<div class="tp-caption tp-resizeme first_text pink" data-x="['right','right','right','15','0']"
							data-hoffset="['-150','-150','-150','0']" data-y="['top','top','top','top']"
							data-voffset="['320','320','320','320','130']" data-fontsize="['60','60','60','40','30']"
							data-lineheight="['76','76','76','50','40']" data-width="['780','780','780','400']"
							data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
							data-textAlign="['left','left','left','left']">Decadent Cakes...<br>for Every Celebration</div>

						<div class="tp-caption tp-resizeme secand_text black"
							data-x="['right','right','right','15','0']" data-hoffset="['0','0','0','0']"
							data-y="['top','top','top','top']" data-voffset="['485','485','485','485','225']"
							data-fontsize="['20','20','20','20','16']" data-lineheight="['28','28','28','28']"
							data-width="['620','620','620','620','300']" data-height="none" data-whitespace="normal"
							data-type="text" data-responsive_offset="on" data-transform_idle="o:1;"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
							Celebrate life's special moments with our deliciously crafted cakes. From birthday cakes to
							wedding cakes, each creation is made with a touch of artistry and love.
						</div>

						<div class="tp-caption tp-resizeme slider_button" data-x="['right','right','right','15','0']"
							data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
							data-voffset="['575','575','575','575','330']" data-fontsize="['14','14','14','14']"
							data-lineheight="['46','46','46','46']" data-width="['620','620','620','620','300']"
							data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
							<a class="main_btn" href="#">Order Your Cake Today</a>
						</div>
					</div>
				</li>
				<li data-index="rs-1589" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
					data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
					data-thumb="Cake-Baker/img/home-slider/slider-11.jpg" data-rotate="0" data-saveperformance="off"
					data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5=""
					data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
					<!-- MAIN IMAGE -->
					<img src="Cake-Baker/img/home-slider/slider-11.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
					<!-- LAYERS -->
					<!-- LAYERS -->

					<!-- LAYER NR. 1 -->
					<div class="slider_text_box">
						<div class="tp-caption tp-resizeme first_text pink" data-x="['right','right','right','15','0']"
							data-hoffset="['-150','-150','-150','0']" data-y="['top','top','top','top']"
							data-voffset="['320','320','320','320','130']" data-fontsize="['60','60','60','40','30']"
							data-lineheight="['76','76','76','50','40']" data-width="['780','780','780','400']"
							data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
							data-textAlign="['left','left','left','left']">Artisan Baked Goods... <br> Crafted with
							Precision</div>

						<div class="tp-caption tp-resizeme secand_text black"
							data-x="['right','right','right','15','0']" data-hoffset="['0','0','0','0']"
							data-y="['top','top','top','top']" data-voffset="['485','485','485','485','225']"
							data-fontsize="['20','20','20','20','16']" data-lineheight="['28','28','28','28']"
							data-width="['620','620','620','620','300']" data-height="none" data-whitespace="normal"
							data-type="text" data-responsive_offset="on" data-transform_idle="o:1;"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
							Experience the perfect blend of taste and craftsmanship. Our cakes and baked goods are made
							using the finest ingredients for a treat you won't forget.
						</div>

						<div class="tp-caption tp-resizeme slider_button" data-x="['right','right','right','15','0']"
							data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
							data-voffset="['575','575','575','575','330']" data-fontsize="['14','14','14','14']"
							data-lineheight="['46','46','46','46']" data-width="['620','620','620','620','300']"
							data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
							data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
							<a class="main_btn" href="#">Start Your Order</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<!--================End Slider Area =================-->

	<!--================Welcome Area =================-->
	<section class="wel_bakery_two">
		<div class="container">
			<div class="welcome_bakery_inner p_100">
				<div class="row">
					<div class="col-lg-6">
						<div class="main_title">
							<h2>Welcome to Our Bakery</h2>
							<p>Experience the perfect blend of tradition and taste, crafted with passion to bring you
								the finest baked delights. Step into our world of irresistible flavors and comforting
								aromas.</p>
						</div>
						<div class="welcome_left_text">
							<p>We believe in creating moments of happiness through our baked creations. Every treat is a
								labor of love, made with quality ingredients and a touch of artistry. Join us on a
								journey to savor the little joys of life, one bite at a time.</p>
							<a class="pink_btn" href="about-us.html">Learn More About Us</a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="welcome_img">
							<img class="img-fluid" src="Cake-Baker/img/cake-feature/welcome-right.jpg" alt="Welcome to our bakery">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--================End Welcome Area =================-->

	<!--================Cake Feature Four Area =================-->
	<section class="cake_feature_four">
		<div class="container">
			<div class="cake_feature_inner">
				<div class="main_title">
					<h2>Our Featured Cakes</h2>
					<h5>Delighting your taste buds, one slice at a time</h5>
				</div>
				<div class="cake_feature_slider owl-carousel">
					<div class="item">
						<div class="cake_feature_item">
							<div class="cake_img">
								<img src="Cake-Baker/img/cake-feature/c-feature-1.jpg" alt="">
							</div>
							<div class="cake_text">
								<h4>₹300</h4>
								<h3>Vanilla Delight</h3>
								 <a class="pest_btn" href="#">Order Now</a>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="cake_feature_item">
							<div class="cake_img">
								<img src="Cake-Baker/img/cake-feature/c-feature-2.jpg" alt="">
							</div>
							<div class="cake_text">
								<h4>₹600</h4>
								<h3>Chocolate Fudge</h3>
								<a class="pest_btn" href="#">Order Now</a>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="cake_feature_item">
							<div class="cake_img">
								<img src="Cake-Baker/img/cake-feature/c-feature-3.jpg" alt="">
							</div>
							<div class="cake_text">
								<h4>₹620</h4>
								<h3>Red Velvet Bliss</h3>
								<a class="pest_btn" href="#">Order Now</a>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="cake_feature_item">
							<div class="cake_img">
								<img src="Cake-Baker/img/cake-feature/c-feature-4.jpg" alt="">
							</div>
							<div class="cake_text">
								<h4>₹580</h4>
								<h3>Blueberry Treat</h3>
								<a class="pest_btn" href="#">Order Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--================End Cake Feature Four Area =================-->



	<!--================Bakery Video Area =================-->
	<section class="bakery_video_area">
		<div class="container">
			<div class="video_inner">
				<h3>Real Taste</h3>
				<p>A light, sour wheat dough with roasted walnuts and freshly picked rosemary, thyme, poppy seeds,
					parsley and sage</p>
				<div class="media">
					<div class="d-flex">
						<a class="popup-youtube" href="#"><i class="flaticon-play-button"></i></a>
					</div>
					<div class="media-body">
						<h5>Watch intro video <br />about us</h5>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!--================Newsletter Area =================-->
	<section class="newsletter_area gray_bg">
		<div class="container">
			<div class="newsletter_inner">
				<div class="row">
					<div class="col-lg-6">
						<div class="news_left_text">
							<h4>Join our Newsletter list to get all the latest offers, discounts and other benefits</h4>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="newsletter_form">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Enter your email address">
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" type="button">Subscribe Now</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Newsletter Area =================-->

	<!--================Footer Area =================-->
	<footer class="footer_area">
		<div class="footer_widgets">
			<div class="container">
				<div class="row footer_wd_inner">
					<div class="col-lg-3 col-6">
						<aside class="f_widget f_about_widget">
							<img src="img/footer-logo.png" alt="">
							<p>We bring joy to every celebration with our delicious, handcrafted cakes and pastries.
								Indulge in a world of sweetness and make every moment special with CakeBakery.</p>
							<ul class="nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</aside>
					</div>
					<div class="col-lg-3 col-6">
						<aside class="f_widget f_link_widget">
							<div class="f_title">
								<h3>Quick links</h3>
							</div>
							<ul class="list_style">
								<li><a href="#">Your Account</a></li>
								<li><a href="#">View Order</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</aside>
					</div>
					<div class="col-lg-3 col-6">
						<aside class="f_widget f_link_widget">
							<div class="f_title">
								<h3>Work Times</h3>
							</div>
							<ul class="list_style">
								<li><a href="#">Mon. - Fri.: 8 am - 8 pm</a></li>
								<li><a href="#">Sat.: 9 am - 4 pm</a></li>
								<li><a href="#">Sun.: Closed</a></li>
							</ul>
						</aside>
					</div>
					<div class="col-lg-3 col-6">
						<aside class="f_widget f_contact_widget">
							<div class="f_title">
								<h3>Contact Info</h3>
							</div>
							<h4>+91 914 696 4882</h4>
							<p>CakeBakery Store <br />256 Baker Street, Mumbai, 5245</p>
							<h5>tscakebakery@contact.co.in</h5>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--================End Footer Area =================-->


	<!--================Search Box Area =================-->
	<div class="search_area zoom-anim-dialog mfp-hide" id="test-search">
		<div class="search_box_inner">
			<h3>Search</h3>
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button"><i class="icon icon-Search"></i></button>
				</span>
			</div>
		</div>
	</div>
	<!--================End Search Box Area =================-->





	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="Cake-Baker/js/jquery-3.2.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="Cake-Baker/js/popper.min.js"></script>
	<script src="Cake-Baker/js/bootstrap.min.js"></script>
	<!-- Rev slider js -->
	<script src="Cake-Baker/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script src="Cake-Baker/vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<!-- Extra plugin js -->
	<script src="Cake-Baker/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="Cake-Baker/vendors/magnifc-popup/jquery.magnific-popup.min.js"></script>
	<script src="Cake-Baker/vendors/datetime-picker/js/moment.min.js"></script>
	<script src="Cake-Baker/vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
	<script src="Cake-Baker/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="Cake-Baker/vendors/jquery-ui/jquery-ui.min.js"></script>
	<script src="Cake-Baker/vendors/lightbox/simpleLightbox.min.js"></script>

	<script src="Cake-Baker/js/theme.js"></script>
	<script src="or.js"></script>
	
</body>

</html>
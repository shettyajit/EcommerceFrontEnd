<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>
<spring:url value="/resources/fonts" var="fonts"/>
<%@include file="header.jsp"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Brnd-logo Website Template | Home :: w3layouts</title>
		<link href="${css}/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="${js}/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="${css}/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="${js}/move-top.js"></script>
		<script type="text/javascript" src="${js}/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
		
			<!----start-slider-script---->
			<script src="${js}/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
			          <img src="${img}/slide1.png" alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          		<h1>WILL HELM</h1>
			          		<label>WINTER</label>
			          		<a class="slide-btn" href="#"><span>99.90$</span> <small>GET NOW</small><label> </label></a>
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="${img}/slide2.png" alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          		<h1>FAST NER2</h1>
			          		<label>Dress Shoe</label>
			          		<a class="slide-btn" href="#"><span>99.90$</span> <small>GET NOW</small><label> </label></a>
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="${img}/slide1.png" alt="">
			           <div class="caption">
			           	<div class="slide-text-info">
			          		<h1>WILL HELM</h1>
			          		<label>WINTER</label>
			          		<a class="slide-btn" href="#"><span>99.90$</span> <small>GET NOW</small><label> </label></a>
			          	</div>
			          </div>
			        </li>
			      </ul>
			    </div>
			    <div class="clearfix"> </div>
			<!----- //End-slider---->
			<!----content---->
				<div class="content">
					<div class="container">
				<!---top-row--->
				<div class="top-row">
					<div class="col-xs-4">
						<div class="top-row-col1 text-center">
							<h2>WOMAN</h2>
							<img class="r-img text-center" src="${img}/img-w.jpg" title="name" />
							<span><img src="images/obj1.png" title="name" /></span>
							<h4>TOTAL</h4>
							<label>357 PRODUCTS</label>
							<a class="r-list-w" href="single-page.html"><img src="${img}/list-icon.png" title="list" /></a>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="top-row-col1 text-center">
							<h2>MAN</h2>
							<img class="r-img text-center" src="${img}/man-r-img.jpg" title="name" />
							<span><img src="${img}/obj2.png" title="name" /></span>
							<h4>TOTAL</h4>
							<label>357 PRODUCTS</label>
							<a class="r-list-w" href="single-page.html"><img src="${img}/list-icon.png" title="list" /></a>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="top-row-col1 text-center">
							<h2>KIDS</h2>
							<img class="r-img text-center" src="${img}/kid-r-img.jpg" title="name" />
							<span><img src="${img}/obj3.png" title="name" /></span>
							<h4>TOTAL</h4>
							<label>357 PRODUCTS</label>
							<a class="r-list-w" href="single-page.html"><img src="${img}/list-icon.png" title="list" /></a>
						</div>
					</div>
					<vdi class="clearfix"> </div>
				</div>
				<!---top-row--->
				<div class="container"> 
				<!----speical-products---->
				<div class="special-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>SPECIAL <span>PRODUCTS</span></h3>
						</div>
						<div class="s-products-head-right">
							<a href="products.html"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p1.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Nike Roshe Run</a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b2.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Line Link 67009</a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b3.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p3.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Minimus Zero </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b4.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p4.jpg" title="product-name" /></a>
							<h4><a href="single-page.html"> Athletic Shoe </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b5.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p2.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Veronique </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b6.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p6.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Suede Boots </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b7.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p7.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Barricade 6.0  </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<a class="brand-name" href="single-page.html"><img src="${img}/b1.jpg" title="name" /></a>
							<a class="product-here" href="single-page.html"><img src="${img}/p8.jpg" title="product-name" /></a>
							<h4><a href="single-page.html">Cotu Classic </a></h4>
							<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET NOW</small><label> </label></a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!---//speical-products---->
				</div>
			<!----content---->
			<!----footer--->
			<div class="footer">
				<div class="container">
					<div class="col-md-3 footer-logo">
						<a href="index.html"><img src="${img}/flogo.png" title="brand-logo" /></a>
					</div>
					<div class="col-md-7 footer-links">
						<ul class="unstyled-list list-inline">
							<li><a href="#"> Faq</a> <span> </span></li>
							<li><a href="#"> Terms and Conditions</a> <span> </span></li>
							<li><a href="#"> Secure Payments</a> <span> </span></li>
							<li><a href="#"> Shipping</a> <span> </span></li>
							<li><a href="contact"> Contact</a> </li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="col-md-2 footer-social">
						<ul class="unstyled-list list-inline">
							<li><a class="pin" href="#"><span> </span></a></li>
							<li><a class="twitter" href="#"><span> </span></a></li>
							<li><a class="facebook" href="#"><span> </span></a></li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			 </div>
			 <div class="clearfix"> </div>
			<!---//footer--->
			<!---copy-right--->
					<div class="copy-right">
						<div class="container">
							<p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>
							<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
							<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
						</div>
					</div>
			<!--//copy-right--->
		</div>
		<!----container---->
	</body>
</html>

        
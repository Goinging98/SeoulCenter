<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>서울상담소</title>
		<!-- SEO Meta Tags-->
	<meta name="description"content="Finder - Directory &amp; Listings Bootstrap Template">
	<meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
	<meta name="author" content="Createx Studio">
		<!-- Viewport-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Favicon and Touch Icons-->
	<link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/img/city-guide/logo/logo.gif">
	<link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/city-guide/logo/logo.gif">
	<link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/city-guide/logo/logo.gif">
	<link rel="manifest" href="${path}/resources/site.webmanifest">
	<link rel="mask-icon" color="#5bbad5" href="${path}/resources/safari-pinned-tab.svg">
	<meta name="msapplication-TileColor" content="#766df4">
	<meta name="theme-color" content="#ffffff">
	
	<!-- Page loading styles-->
	<style>
		.page-loading {
			position: fixed;
			top: 0;
			right: 0;
			bottom: 0;
			left: 0;
			width: 100%;
			height: 100%;
			-webkit-transition: all .4s .2s ease-in-out;
			transition: all .4s .2s ease-in-out;
			background-color: #fff;
			opacity: 0;
			visibility: hidden;
			z-index: 9999;
		}
		
		.page-loading.active {
			opacity: 1;
			visibility: visible;
		}
		
		.page-loading-inner {
			position: absolute;
			top: 50%;
			left: 0;
			width: 100%;
			text-align: center;
			-webkit-transform: translateY(-50%);
			transform: translateY(-50%);
			-webkit-transition: opacity .2s ease-in-out;
			transition: opacity .2s ease-in-out;
			opacity: 0;
		}
		
		.page-loading.active>.page-loading-inner {
			opacity: 1;
		}
		
		.page-loading-inner>span {
			display: block;
			font-size: 1rem;
			font-weight: normal;
			color: #666276;
			;
		}
		
		.page-spinner {
			display: inline-block;
			width: 2.75rem;
			height: 2.75rem;
			margin-bottom: .75rem;
			vertical-align: text-bottom;
			border: .15em solid #bbb7c5;
			border-right-color: transparent;
			border-radius: 50%;
			-webkit-animation: spinner .75s linear infinite;
			animation: spinner .75s linear infinite;
		}
		
		@
		-webkit-keyframes spinner { 100% {
			-webkit-transform: rotate(360deg);
			transform: rotate(360deg);
		}}
		
		@
		keyframes spinner { 100% {
			-webkit-transform: rotate(360deg);
			transform: rotate(360deg);
		}}
		
		.scrollable-menu {
			max-height: 200px;
			overflow-y: auto;
		}
		
		.searchbarmoveTop {
			position: absolute;
			top: 460px;
			left: calc(50% - 590px);
			width: 610px;
			max-width: 100%;
			margin: 0 auto;
			resize: horizontal;
			z-index: 1;
		}
	</style>
	
	
	<!-- Page loading scripts-->
	<script>
	    (function () {
	      window.onload = function () {
	        var preloader = document.querySelector('.page-loading');
	        preloader.classList.remove('active');
	        setTimeout(function () {
	          preloader.remove();
	        }, 2000);
	      };
	    })();
	</script>
	
	
	<!-- Vendor Styles-->
	<link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
	<link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
	<link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css" />
	<!-- Main Theme Styles + Bootstrap-->
	<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">

	<!-- Body-->
	<body class="bg-secondary">
		<!-- Page loading spinner-->
		<div class="page-loading active">
			<div class="page-loading-inner">
				<div class="page-spinner"></div>
				<span>Loading...</span>
			</div>
		</div>
		<main class="page-wrapper">
			<!-- Navbar-->
			<header class="navbar navbar-expand-lg navbar-light fixed-top"
				data-scroll-header>
				<div class="container">
					<a class="navbar-brand me-3 me-xl-4" href="main"><img
						class="d-block" src="${path}/resources/img/city-guide/logo/logo.gif" width="116"
						alt="Finder"></a>
					<button class="navbar-toggler ms-auto" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3">
						<a class="d-block py-2" href="mypageinfo"><img
							class="rounded-circle" src="${path}/resources/img/avatars/36.png" width="40"
							alt="member"></a>
						<div class="dropdown-menu dropdown-menu-end">
							<div class="d-flex align-items-start border-bottom px-3 py-1 mb-2"
								style="width: 16rem;">
								<img class="rounded-circle" src="${path}/resources/img/avatars/24.png" width="48" alt="member">
								<div class="ps-2">
									<h6 class="fs-base mb-0">${loginMember.name}</h6>
									<div class="fs-xs py-2">${loginMember.id}</div>
								</div>
							</div>
							<a class="dropdown-item" href="mypageinfo">나의 정보</a>
							<a class="dropdown-item" href="mypageinfo">찜한 숙소</a>
							<a class="dropdown-item" href="mypageinfo">찜한 맛집</a>
							<a class="dropdown-item" href="mypageinfo">리뷰</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="${path}/logout">로그아웃</a>
						</div>
					</div>
					<div class="collapse navbar-collapse order-lg-2" id="navbarNav">
						<ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
							<!-- Menu items-->
							<li class="nav-item dropdown active">
								<a class="nav-link" href="/mvc/" data-bs-toggle="" aria-expanded="false"> 
									<strong>Home</strong>
								</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link" href="/mvc/foodMain" data-bs-toggle="" aria-expanded="false">
								<strong>맛집</strong>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/mvc/accomMain" data-bs-toggle="" aria-expanded="false">
									<strong>숙소</strong>
								</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="/mvc/hotMain"	data-bs-toggle="" aria-expanded="false">
								<strong>핫플레이스</strong>
								</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link"	href="/mvc/community/notice" data-bs-toggle="" aria-expanded="false">
									<strong>커뮤니티</strong>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</header>
		</main>
	</body>
	
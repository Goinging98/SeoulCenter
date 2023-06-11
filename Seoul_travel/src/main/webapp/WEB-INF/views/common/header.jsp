<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	
	
</head>


<!-- Body-->
<body style="padding-left: 130px; padding-right: 130px;">
	<!-- Sign In Modal-->
	<div class="modal fade" id="signin-modal" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
			<div class="modal-content">
				<div class="modal-body px-0 py-2 py-sm-0">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
					<div class="row mx-0 align-items-center">
						<div class="col-md-6 border-end-md p-4 p-sm-5">
							<h2 class="h3 mb-4 mb-sm-5">
								안녕하세요!<br>방문해주셔서 감사합니다.
							</h2>
							<img class="d-block mx-auto"
								src="${path}/resources/img/signin-modal/signin.svg" width="344"
								alt="Illustartion">
							<div class="mt-4 mt-sm-5">서울상담소의 회원이 아니신가요?? 
								<a href="#signup-modal"	data-bs-toggle="modal" data-bs-dismiss="modal">
									회원가입
								</a>
							</div>
						</div>
						<div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5">
							<form class="needs-validation" action="${path}/login" method="post" novalidate>
								<div class="mb-4">
									<label class="form-label mb-2" for="signin-email">이메일
										주소</label> <input name="memberId" class="form-control" type="email" id="signin-email"
										placeholder="이메일을 입력해주세요." required>
								</div>
								<div class="mb-4">
									<div
										class="d-flex align-items-center justify-content-between mb-2">
										<label class="form-label mb-0" for="signin-password">비밀번호</label><a
											class="fs-sm" href="#">비밀번호 찾기</a>
									</div>
									<div class="password-toggle">
										<input class="form-control" name="memberPwd" type="password"
											id="signin-password" placeholder="비밀번호를 입력해주세요." required>
										<label class="password-toggle-btn"
											aria-label="Show/hide password"> <input
											class="password-toggle-check" type="checkbox"><span
											class="password-toggle-indicator"></span>
										</label>
									</div>
								</div>
								<button class="btn btn-primary btn-lg rounded-pill w-100" type="submit">로그인</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Sign Up Modal-->
	<div class="modal fade" id="signup-modal" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
			<div class="modal-content">
				<div class="modal-body px-0 py-2 py-sm-0">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
					<div class="row mx-0 align-items-center">
						<div class="col-md-6 border-end-md p-4 p-sm-5">
							<h2 class="h3 mb-4 mb-sm-5">
								서울상담소의<br>회원이 되어보세요.
							</h2>
							<ul class="list-unstyled mb-4 mb-sm-5">
								<li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i>
									<span>서울의 숙소를 한눈에 보고 예약해 보세요.</span></li>
								<li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i>
									<span>마음에 드는 곳을 찜하고 방문해 보세요.</span></li>
								<li class="d-flex mb-0"><i class="fi-check-circle text-primary mt-1 me-2"></i>
									<span>다른 회원들의 리뷰를 만나보세요.</span></li>
							</ul>
							<img class="d-block mx-auto"
								src="${path}/resources/img/signin-modal/signup.svg" width="344"
								alt="Illustartion">
							<div class="mt-sm-4 pt-md-3">
								이미 계정이 있으신가요? <a href="#signin-modal" data-bs-toggle="modal"
									data-bs-dismiss="modal">로그인</a>
							</div>
						</div>
						<div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5">
							<form class="needs-validation" action="${path}/member/enroll/" method="post"  novalidate>
								<div class="mb-4">
									<label class="form-label" for="signup-name">이름</label> 
									<input name="name" class="form-control" type="text" id="signup-name"
										placeholder="이름을 입력하세요" required>
								</div>
								<div class="mb-4">
									<label class="form-label" for="signup-email">이메일 주소</label> 
									<input name="id" class="form-control" type="email" id="signup-email"
										placeholder="이메일을 입력해주세요" required>
								</div>
								<div class="mb-4">
									<label class="form-label" for="signup-password">비밀번호 <span
										class='fs-sm text-muted'>최소 4자이상</span></label>
									<div class="password-toggle">
										<input class="form-control" type="password" name="password"
											id="signup-password" minlength="4" required> <label
											class="password-toggle-btn" aria-label="Show/hide password">
											<input class="password-toggle-check" type="checkbox"><span
											class="password-toggle-indicator"></span>
										</label>
									</div>
								</div>
								<div class="mb-4">
									<label class="form-label" for="signup-password-confirm">비밀번호 확인</label>
									<div class="password-toggle">
										<input class="form-control" type="password"
											id="signup-password-confirm" minlength="4" required>
										<label class="password-toggle-btn"
											aria-label="Show/hide password"> <input
											class="password-toggle-check" type="checkbox"><span
											class="password-toggle-indicator"></span>
										</label>
									</div>
								</div>
								<div class="form-check mb-4">
									<input class="form-check-input" type="checkbox"
										id="agree-to-terms"> <label
										class="form-check-label" for="agree-to-terms"><a
										href='#'>이용약관</a> 및 <a href='#'>개인 정보 보호정책</a>에 동의합니다.</label>
								</div>
								<button class="btn btn-primary btn-lg rounded-pill w-100"
									type="submit">회원가입</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Navbar-->
	<header class="navbar navbar-expand-lg navbar-light bg-white fixed-top"	data-scroll-header>
		<div class="container">
			<a class="navbar-brand me-3 me-xl-4" href="/mvc/main"> 
				<img class="d-block" src="${path}/resources/img/city-guide/logo/logo.gif"
				width="116" alt="Finder">
			</a>
			<button class="navbar-toggler ms-auto" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<c:if test="${loginMember == null}">
			<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal" style="font-size: 18px;">
				<i class="fi-user me-2"  style="font-size: 18px;"></i>Sign in
			</a>
			</c:if>
			<c:if test="${loginMember != null}">
				<div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3">
					<a class="d-block py-2" href="/mvc/mypageinfo"><img
						class="rounded-circle" src="${path}/resources/img/avatars/36.png"
						width="40" alt="member"></a>
					<div class="dropdown-menu dropdown-menu-end">
						<div class="d-flex align-items-start border-bottom px-3 py-1 mb-2"
							style="width: 16rem;">
							<img class="rounded-circle"
								src="${path}/resources/img/avatars/24.png" width="48"
								alt="member">
							<div class="ps-2">
								<h6 class="fs-base mb-0">${loginMember.name}</h6>
								<span class="star-rating star-rating-sm"></span>
								<div class="fs-xs py-2">
									${loginMember.email}
								</div>
							</div>
						</div>
						<a class="dropdown-item" href="mypageinfo">나의 정보</a>
						<a class="dropdown-item" href="mypageinfo">찜한 숙소</a>
						<a class="dropdown-item" href="mypageinfo">찜한 맛집</a>
						<a class="dropdown-item" href="mypageinfo">리뷰</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="mypageinfo">고객센터</a><a
							class="dropdown-item" href="${path}/logout">로그아웃</a>
					</div>
				</div>
			</c:if>
			<div class="collapse navbar-collapse order-lg-2" id="navbarNav">
				<ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
					<!-- Menu items-->
					<li class="nav-item dropdown active">
						<a class="nav-link" href="/mvc/main" data-bs-toggle="" aria-expanded="false"> 
							<strong style="font-size: 18px;">Home</strong>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link" href="/mvc/foodMain" data-bs-toggle="" aria-expanded="false">
						<strong style="font-size: 18px;">맛집</strong>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/mvc/accomMain" data-bs-toggle="" aria-expanded="false">
							<strong style="font-size: 18px;">숙소</strong>
						</a>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="/mvc/hotMain"	data-bs-toggle="" aria-expanded="false">
						<strong style="font-size: 18px;">핫플레이스</strong>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link"	href="/mvc/community/notice" data-bs-toggle="" aria-expanded="false">
							<strong style="font-size: 18px;">커뮤니티</strong>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</header>
</body>
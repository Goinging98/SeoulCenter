<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header_mypage.jsp" />

<div class="container mt-5 mb-md-4 py-5">
	<!-- 상단 이름 노출 -->
	<nav class="mb-4 pt-2 pt-lg-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>마이페이지</strong></li>
		</ol>
	</nav>
	<!-- Account header-->
	<div
		class="d-flex align-items-center justify-content-between pb-4 mb-2">
		<div class="d-flex align-items-center">
			<div class="position-relative flex-shrink-0">
				<img class="rounded-circle border border-white"
					src="${path}/resources/img/avatars/29.png" width="100" alt="member">
			</div>
			<div class="ps-3 ps-sm-4">
				<h3 class="h4 mb-2">${loginMember.name}</h3>
				<span class="star-rating"></span>
			</div>
		</div>
		<a class="nav-link p-0 d-none d-md-block" href="${path}/logout">
			<i class="fi-logout mt-n1 me-2"></i>로그아웃</a>
	</div>
	
	
	<!-- Page content-->
	<div class="card card-body p-4 p-md-5 shadow-sm">
		<!-- Account nav-->
		<div class="mt-md-n3 mb-4">
			<a class="btn btn-outline-primary btn-lg rounded-pill w-100 d-md-none"
				href="#account-nav" data-bs-toggle="collapse">마이페이지</a>
			<div class="collapse d-md-block" id="account-nav">
				<ul class="nav nav-pills flex-column flex-md-row pt-3 pt-md-0 pb-md-4 border-bottom-md">
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link" href="mypageinfo">나의 정보</a>
					</li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link" href="myaccomodation">찜한 숙소</a>
					</li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link active" href="myfood">찜한 맛집</a>
					</li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link" href="myreview">나의 리뷰</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between mb-4 py-2">
			<h1 class="h3 mb-md-0">나의 리뷰</h1>
		</div>
		
		<!-- Articles list-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/font-awesome/css/all.min.css">
		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/bootstrap-icons/bootstrap-icons.css">
		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/flatpickr/css/flatpickr.min.css">
		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/choices/css/choices.min.css">
		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/tiny-slider/tiny-slider.css">
		<link rel="stylesheet" type="text/css"
			href="/booking/booking_v1.1.0/template/assets/vendor/nouislider/nouislider.css">
		
		
		<div class="col-lg-9">
			<div class="ps-lg-3">
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4"	style="width: 1150px;">
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						
						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 col-sm-12 position-relative">
									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img src="https://mblogthumb-phinf.pstatic.net/MjAyMDAxMDZfNjAg/MDAxNTc4Mjk2Nzg4MDkz.ozpWU6UeQftpOFyy0-ntCFcgENUGNt29JOR7ahGiuCcg.XJcL8E_cauK0bOuuG92o4x6W47zW7fbMV0qRfWIpCSIg.JPEG.junef/%EB%A7%88%EB%9D%BC%ED%83%95.jpg?type=w800"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small>어디어디 강남구 </small>
										<!-- Amenities -->
										<ul class="nav nav-divider mt-3">
											<li class="nav-item">양식</li>
										</ul>

										<!-- List -->
										<ul class="list-group list-group-borderless small mb-0 mt-2">
											<li class="list-group-item d-flex text-success p-0"></li>
											<li class="list-group-item d-flex text-success p-0"></li>
										</ul>

										<!-- Price and Button -->
										<div
											class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
											<!-- Button -->

											<!-- Price -->
											<div class="mt-3 mt-sm-0">
												<a href="3.2_foodDetailed.html"
													class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Pagination-->
						<div class="d-flex justify-content-end pt-4 border-top">
							<nav aria-label="Blog pagination">
								<ul class="pagination mb-0">
									<li class="page-item d-sm-none"><span
										class="page-link page-link-static">1 / 8</span></li>
									<li class="page-item active d-none d-sm-block"
										aria-current="page"><span class="page-link">1<span
											class="visually-hidden">(current)</span></span></li>
									<li class="page-item d-none d-sm-block"><a
										class="page-link" href="#">2</a></li>
									<li class="page-item d-none d-sm-block"><a
										class="page-link" href="#">3</a></li>
									<li class="page-item d-none d-sm-block">...</li>
									<li class="page-item d-none d-sm-block"><a
										class="page-link" href="#">8</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"><i class="fi-chevron-right"></i></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
		
		
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<!-- Page container-->
<div class="container mt-5 mb-md-4 py-5">
	<!-- Breadcrumbs-->
	<nav class="mb-4 pt-2 pt-lg-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="1.1_main_page (login).html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="0_myPage-info.html"><strong>마이페이지</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>찜한
					맛집</strong></li>
		</ol>
	</nav>
	<!-- Account header-->
	<div
		class="d-flex align-items-center justify-content-between pb-4 mb-2">
		<div class="d-flex align-items-center">
			<div class="position-relative flex-shrink-0">
				<img class="rounded-circle border border-white"
					src="img/avatars/29.png" width="100" alt="Annette Black">
				<button
					class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm position-absolute end-0 bottom-0"
					type="button" data-bs-toggle="tooltip" title="Change image">
					<i class="fi-pencil fs-xs"></i>
				</button>
			</div>
			<div class="ps-3 ps-sm-4">
				<h3 class="h4 mb-2">최길동</h3>
				<span class="star-rating"><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i></span>
			</div>
		</div>
		<a class="nav-link p-0 d-none d-md-block" href="signin-light.html"><i
			class="fi-logout mt-n1 me-2"></i>로그아웃</a>
	</div>
	<!-- Page content-->
	<div class="card card-body p-4 p-md-5 shadow-sm">
		<!-- Account nav-->
		<div class="mt-md-n3 mb-4">
			<a
				class="btn btn-outline-primary btn-lg rounded-pill w-100 d-md-none"
				href="#account-nav" data-bs-toggle="collapse"><i
				class="fi-align-justify me-2"></i>Account Menu</a>
			<div class="collapse d-md-block" id="account-nav">
				<ul
					class="nav nav-pills flex-column flex-md-row pt-3 pt-md-0 pb-md-4 border-bottom-md">
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link" href="0_myPage-info.html"><i
							class="fi-user mt-n1 me-2 fs-base"></i>나의 정보</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link " href="0_myPage-favoritHotel.html"
						aria-current="page"><i class="fi-heart mt-n1 me-2 fs-base"></i>찜한
							숙소</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link active" href="0_myPage-favoritFood.html"
						aria-current="page"><i class="fi-heart mt-n1 me-2 fs-base"></i>찜한
							맛집</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link" href="0_myPage-reviews.html"><i
							class="fi-star mt-n1 me-2 fs-base"></i>나의 리뷰</a></li>
					<li class="nav-item d-md-none"><a class="nav-link"
						href="signin-light.html"><i
							class="fi-logout mt-n1 me-2 fs-base"></i>로그아웃</a></li>
				</ul>
			</div>
		</div>
		<div
			class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between mb-4 pt-2">
			<h1 class="h3 mb-md-0">찜한 맛집</h1>
			<!-- Sort-->
			<div class="d-flex align-items-sm-center align-items-end">
				<div
					class="d-flex flex-sm-row flex-column align-items-sm-center w-100 pe-sm-2">
					<label class="mb-sm-0 mb-2 me-sm-2 pe-sm-1 text-nowrap"
						for="sortby"><i class="fi-arrows-sort me-2"></i> 정렬 : </label> <select
						class="form-select form-select-sm" id="sortby"
						style="min-width: 180px;">
						<option>최신순</option>
						<option>오래된순</option>
						<option>평점순</option>
					</select>
				</div>
				<a
					class="d-inline-block ms-sm-4 ms-3 mb-sm-0 mb-2 fs-sm fw-bold text-decoration-none text-nowrap"
					href="#"><i class="fi-x fs-xs me-2 align-middle"></i>모두 삭제</a>
			</div>
		</div>
		<!-- Articles list-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="stylesheet"
			href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

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
				<article class="card card-horizontal border-0 mb-4"
					style="width: 1150px;">
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 col-sm-12 position-relative">

									<!-- Overlay item -->
									<div class="position-absolute top-0 start-0  z-index-1 m-2">
										<div class="badge text-bg-danger">BEST 리뷰수</div>
									</div>

									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img
												src="https://mblogthumb-phinf.pstatic.net/MjAyMDAxMDZfNjAg/MDAxNTc4Mjk2Nzg4MDkz.ozpWU6UeQftpOFyy0-ntCFcgENUGNt29JOR7ahGiuCcg.XJcL8E_cauK0bOuuG92o4x6W47zW7fbMV0qRfWIpCSIg.JPEG.junef/%EB%A7%88%EB%9D%BC%ED%83%95.jpg?type=w800"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div
										class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>

											<ul class="list-inline mb-0 z-index-2">
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button --> <a href="#"
													class="btn btn-sm btn-round btn-light" role="button"
													id="dropdownShare" data-bs-toggle="dropdown"
													aria-expanded="false"> <i
														class="fa-solid fa-fw fa-share-alt"></i>
												</a> <!-- dropdown button -->
													<ul
														class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
														aria-labelledby="dropdownShare">
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>어디어디 강남구 </small>
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

						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 position-relative">

									<!-- Overlay item -->
									<div class="position-absolute top-0 start-0  z-index-1 m-2">
										<div class="badge text-bg-danger">BEST 리뷰수</div>
									</div>

									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img
												src="https://cdn.sommeliertimes.com/news/photo/201904/13073_26162_2932.jpg"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div
										class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>

											<ul class="list-inline mb-0 z-index-2">
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button --> <a href="#"
													class="btn btn-sm btn-round btn-light" role="button"
													id="dropdownShare" data-bs-toggle="dropdown"
													aria-expanded="false"> <i
														class="fa-solid fa-fw fa-share-alt"></i>
												</a> <!-- dropdown button -->
													<ul
														class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
														aria-labelledby="dropdownShare">
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>어디어디 강남구 </small>
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

						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 position-relative">

									<!-- Overlay item -->
									<div class="position-absolute top-0 start-0  z-index-1 m-2">
										<div class="badge text-bg-danger">BEST 리뷰수</div>
									</div>

									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img
												src="data:image/jpeg;base64,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"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div
										class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>

											<ul class="list-inline mb-0 z-index-2">
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button --> <a href="#"
													class="btn btn-sm btn-round btn-light" role="button"
													id="dropdownShare" data-bs-toggle="dropdown"
													aria-expanded="false"> <i
														class="fa-solid fa-fw fa-share-alt"></i>
												</a> <!-- dropdown button -->
													<ul
														class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
														aria-labelledby="dropdownShare">
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>어디어디 강남구 </small>
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

						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 position-relative">

									<!-- Overlay item -->
									<div class="position-absolute top-0 start-0  z-index-1 m-2">
										<div class="badge text-bg-danger">BEST 리뷰수</div>
									</div>

									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img
												src="https://mblogthumb-phinf.pstatic.net/MjAxOTExMTBfMjY4/MDAxNTczMzgyNjIwNjc4.dF5VEUqipGFRERQglEhi_vTwKYoAHvc7WfkAve_bBVYg.EJDiFLSh_yapP_VKVcw7avFHw3L2q76wr2SLnS6ul0og.JPEG.ktaitai2/5%EB%B3%B4%EC%8C%88.jpg?type=w800"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div
										class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>

											<ul class="list-inline mb-0 z-index-2">
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button --> <a href="#"
													class="btn btn-sm btn-round btn-light" role="button"
													id="dropdownShare" data-bs-toggle="dropdown"
													aria-expanded="false"> <i
														class="fa-solid fa-fw fa-share-alt"></i>
												</a> <!-- dropdown button -->
													<ul
														class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
														aria-labelledby="dropdownShare">
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>어디어디 강남구 </small>
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
						<!-- Card item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 position-relative">

									<!-- Overlay item -->
									<div class="position-absolute top-0 start-0  z-index-1 m-2">
										<div class="badge text-bg-danger">BEST 리뷰수</div>
									</div>

									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img
												src="https://t1.daumcdn.net/cfile/tistory/231614475363D74809"
												style="min-width: 279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div
										class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>

											<ul class="list-inline mb-0 z-index-2">
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button --> <a href="#"
													class="btn btn-sm btn-round btn-light" role="button"
													id="dropdownShare" data-bs-toggle="dropdown"
													aria-expanded="false"> <i
														class="fa-solid fa-fw fa-share-alt"></i>
												</a> <!-- dropdown button -->
													<ul
														class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
														aria-labelledby="dropdownShare">
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i
																class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="hotel-detail.html">1맛집 </a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>어디어디 강남구 </small>
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
				<!-- load more-->
				<a class="d-inline-block py-sm-2 fw-bold text-decoration-none"
					href="#"><i class="fi-refresh me-2 align-middle"></i>새로고침</a>
			</div>
		</div>
		</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

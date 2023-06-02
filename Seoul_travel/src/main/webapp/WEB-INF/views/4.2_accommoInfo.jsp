<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<section class="container pt-5 mt-5">
	<!-- Breadcrumb-->
	<nav class="mb-3 pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="accomMain"><strong>숙소</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>${item.title}</strong></li>
		</ol>
	</nav>
	<div
		class="d-sm-flex align-items-center justify-content-between mb-4 pb-sm-2">
		<h1 class="h2 me-3 mb-sm-0">${item.title}</h1>
		<div class="text-nowrap">
			<button
				class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle"
				type="button" data-bs-toggle="tooltip" title="Add to Wishlist">
			</button>
		</div>
	</div>
	<!-- Nav pills-->
	<ul class="nav nav-pills border-bottom pb-3 mb-4">
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center"
			href="accomGall">갤러리</a></li>
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center active"
			href="accomDetail">정보</a></li>
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center "
			href="accomRev">리뷰</a></li>
	</ul>
</section>
<!-- Page content -->
<section class="container pb-5 mb-md-4">
	<div class="row">
		<!-- 개요-->
		<div class="col-md-12 mb-md-0 mb-4 pb-md-0 pb-2">
			<h2 class="h4">소개</h2>
			<ul class="list-unstyled">
				<li><i class="fi-star-filled mt-n1 me-1 text-warning align-middle"></i><b>4.9</b><span class="text-muted">(48 reviews)</span></li>
			</ul>
			<div class="mb-4 pb-md-3">
				<p class="mb-1">${item.addr1}<br/>${item.overview}</p>
			</div>
			<!-- 편의 시설/ 서비스 -->
			<div class="mb-4 pb-md-3">
				<h2 class="h4">정보</h2>
				<ul
					class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
					<li class="col"><i class="fi-check mt-n1 me-2 fs-lg align-middle"></i>체크인: ${item.checkintime}</li>
					<li class="col"><i class="fi-check mt-n1 me-2 fs-lg align-middle"></i>체크아웃: ${item.checkouttime}</li>
					<li class="col"><i class="fi-check mt-n1 me-2 fs-lg align-middle"></i>주차: ${item.parkinglodging}</li>
					<li class="col"><i class="fi-check mt-n1 me-2 fs-lg align-middle"></i>픽업: ${item.pickup}</li>
					<li class="col"><i class="fi-check mt-n1 me-2 fs-lg align-middle"></i>규모: ${item.scalelodging} </li>
				</ul>
			</div>
			<!-- 객실 선택 -->
			<div class="mb-4 pb-md-3">
				<h2 class="h4">부대시설 </h2>
				<h5>${item.subfacility}</h5>
			</div>
			<!-- Page content-->
			<section class="container pb-5 mb-md-4">
				<div class="row">
					<div class="col-md-7 mb-md-0 mb-3">
						<div class="card py-2 px-sm-4 px-3 shadow-sm">
							<div class="card-body mx-n2">
								<!-- Place info-->
								<div class="d-flex align-items-start mb-3 pb-3 border-bottom">
									<img src="img/city-guide/brands/hotel.svg" width="60"
										alt="Thumbnail">
									<div class="ps-2 ms-1">
										<h3 class="h5 mb-2">${item.title}</h3>
										<ul class="list-unstyled d-flex flex-wrap fs-sm">
											<li class="me-2 mb-1 pe-1"><i
												class="fi-star-filled mt-n1 me-1 text-warning align-middle opacity-70"></i><b>4.9
											</b>(48)</li>
											<li class="me-2 mb-1 pe-1"><i
												class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i>강남구</li>
										</ul>
									</div>
								</div>
								<!-- Place contacts-->
								<div class="mb-3 pb-3 border-bottom">
									<h4 class="h5 mb-2">Contacts:</h4>
									<ul class="nav row row-cols-sm-2 row-cols-1 gy-1">
										<li class="col"><div
												class="p-0 fw-normal d-flex align-items-start" href="#">
												<div class="fi-map-pin mt-1 me-2 align-middle opacity-70"></div>
												강남구 역삼동 676 센터필드타워 웨스트동
											</div></li>
										<li class="col"><div
												class="d-inline-block p-0 fw-normal d-inline-flex align-items-start">
												<div class="fi-phone mt-1 me-2 align-middle opacity-70"></div>
												(302) 555-0107
											</div>,
											<div class="nav-link d-inline-block p-0 fw-normal">(302)
												555-0208</div></li>
										<li class="col"><div
												class="p-0 fw-normal d-flex align-items-start">
												<div class="fi-globe mt-1 me-2 align-middle opacity-60"></div>
												bb-hotel.com
											</div></li>
										<li class="col"><div
												class="p-0 fw-normal d-flex align-items-start"
												href="mailto:bb-hotel@example.com">
												<div class="fi-mail mt-1 me-2 align-middle opacity-70"></div>
												bb-hotel@example.com
											</div></li>
									</ul>
								</div>
								<!-- Place pricing-->
								<div class="mb-3 pb-3 border-bottom">
									<div class="row row-cols-sm-2 row-cols-1">
										<div class="col">
											<a
												class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100"
												href="#">예약<i class="fi-chevron-right fs-sm ms-2"></i></a>
										</div>
									</div>
								</div>
								<!-- Follow-->
								<div class="d-flex align-items-center">
									<h4 class="h5 mb-0 me-3">Follow:</h4>
									<div class="text-nowrap">
										<a
											class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2"
											href="#"><i class="fi-facebook"></i></a><a
											class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2"
											href="#"><i class="fi-instagram"></i></a><a
											class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle"
											href="#"><i class="fi-twitter"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Location (Map)-->
					<div class="col-md-5">
						<div
							class="position-relative bg-size-cover bg-position-center bg-repeat-0 h-100 rounded-3"
							style="background-image: url(img/city-guide/single/map.jpg); min-height: 250px;">
							<div
								class="d-flex h-100 flex-column align-items-center justify-content-center">
								<img class="d-block mx-auto mb-4 rounded-circle bg-white shadow"
									src="img/city-guide/brands/hotel.svg" width="40"
									alt="Place logo"><a
									class="btn btn-primary rounded-pill stretched-link"
									href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2423.924340088787!2d13.428504251724927!3d52.58906113876177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47a85284201593ab%3A0x28af69e02ce0e2fc!2sBusinesshotel%20Berlin!5e0!3m2!1sru!2sua!4v1618908622013!5m2!1sru!2sua"
									data-iframe="true" data-bs-toggle="lightbox"><i
									class="fi-route me-2"></i>위치 보기</a>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- Recently viewed-->
		<section class="container pb-5 mb-lg-4">
			<div
				class="d-flex align-items-center justify-content-between mb-4 pb-2">
				<h2 class="h3 mb-0">추천 숙소</h2>
				<a class="btn btn-link fw-normal ms-sm-3 p-0"
					href="accomMain">더 보기<i
					class="fi-arrow-long-right ms-2"></i></a>
			</div>
			<div
				class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
				<div class="tns-carousel-inner"
					data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<button
									class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
									type="button" data-bs-toggle="tooltip" data-bs-placement="left"
									title="Add to Wishlist">
									<i class="fi-heart"></i>
								</button>
								<img class="rounded-3" src="img/city-guide/catalog/09.jpg"
									alt="Article img">
							</div>
							<h3 class="mb-2 fs-lg">
								<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}</a>
							</h3>
							<ul class="list-inline mb-0 fs-xs">
								<li class="list-inline-item pe-1"><i
									class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
									class="text-muted">&nbsp;(48)</span></li>
								<li class="list-inline-item pe-1"><i
									class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
							</ul>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<button
									class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
									type="button" data-bs-toggle="tooltip" data-bs-placement="left"
									title="Add to Wishlist">
									<i class="fi-heart"></i>
								</button>
								<img class="rounded-3" src="img/city-guide/catalog/05.jpg"
									alt="Article img">
							</div>
							<h3 class="mb-2 fs-lg">
								<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}</a>
							</h3>
							<ul class="list-inline mb-0 fs-xs">
								<li class="list-inline-item pe-1"><i
									class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span
									class="text-muted">&nbsp;(24)</span></li>
								<li class="list-inline-item pe-1"><i
									class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
							</ul>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<button
									class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
									type="button" data-bs-toggle="tooltip" data-bs-placement="left"
									title="Add to Wishlist">
									<i class="fi-heart"></i>
								</button>
								<img class="rounded-3" src="img/city-guide/catalog/11.jpg"
									alt="Article img">
							</div>
							<h3 class="mb-2 fs-lg">
								<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}</a>
							</h3>
							<ul class="list-inline mb-0 fs-xs">
								<li class="list-inline-item pe-1"><i
									class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
									class="text-muted">&nbsp;(43)</span></li>
								<li class="list-inline-item pe-1"><i
									class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
							</ul>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<button
									class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
									type="button" data-bs-toggle="tooltip" data-bs-placement="left"
									title="Add to Wishlist">
									<i class="fi-heart"></i>
								</button>
								<img class="rounded-3" src="img/city-guide/catalog/04.jpg"
									alt="Article img">
							</div>
							<h3 class="mb-2 fs-lg">
								<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}></a>
							</h3>
							<ul class="list-inline mb-0 fs-xs">
								<li class="list-inline-item pe-1"><i
									class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
									class="text-muted">&nbsp;(13)</span></li>
								<li class="list-inline-item pe-1"><i
									class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

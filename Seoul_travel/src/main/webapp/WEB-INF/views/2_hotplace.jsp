<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<head>

  <!-- ----------------------------------------------booking 연결파트------------------------------------------ -->
      <!-- Plugins CSS -->
      <link rel="stylesheet" type="text/css" href="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/bootstrap-icons/bootstrap-icons.css">
      <link rel="stylesheet" type="text/css" href="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/tiny-slider/tiny-slider.css">
      <link rel="stylesheet" type="text/css" href="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/glightbox/css/glightbox.css">

      <!-- Theme CSS -->
      <link rel="stylesheet" type="text/css" href="${path}/resources/booking/booking_v1.1.0/template/assets/css/style.css">
</head>

<section class="jarallax bg-dark zindex-1 py-xxl-1" data-jarallax
	data-speed="0.5" style="margin-top: 100px;">
	<span class="img-overlay bg-transparent opacity-100"
		style="background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.588), rgba(0, 0, 0, 0.588));"></span>
	<div class="jarallax-img"
		style="background-image: url(${path}/resources/img/hotplace/party.jpeg);"></div>
	<div class="content-overlay container py-md-5">
		<div class="mt-5 mb-md-5 py-5">
			<div
				class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
				<h1 class="display-7 text-light mt-sm- my-4">
					서울에서
					<p>
						<span style="color: #25af9b;">서울 상담소</span>와 함께!
					</p>
				</h1>
				<p class="fs-ms text-white">
					Find great places to festival, culture, tour, local experts. Plan your trip with <span style="color: #25af9b;">서울 상담소</span>
				</p>
			</div>
			<div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0"></div>
		</div>
	</div>
	<div
		class="position-absolute d-none d-xxl-block bottom-0 start-0 w-100 bg-white zindex-1"
		style="border-top-left-radius: 30px; border-top-right-radius: 30px; height: 30px;"></div>
</section>

<!-- =======================이달의 행사 1줄 START -->
<section>
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h3 class="mb-0">이달의 행사</h3>
			</div>
			<div class="text-end">
				<a class="btn btn-link fw-normal ms-sm-3 p-0"
					href="${path}/hotFestival"> 더 보기 <i
					class="fi-arrow-long-right ms-2"></i>
				</a>
			</div>
		</div>
		<div class="row g-4">
			<!-- Hotel item -->
			<c:forEach var="fItem" items="${fList}">
				<div class="col-sm-6 col-xl-3">
					<!-- Card START -->
					<div class="card card-img-scale overflow-hidden bg-transparent">
						<!-- Image and overlay -->
						<div class="card-img-scale-wrapper rounded-3"
							style="width: 273px; height: 395px; display: flex; justify-content: center;">
							<!-- Image -->
							<img src="${fItem.firstimage}" class="card-img"
								alt="hotplace image">
						</div>
						<!-- Card body -->
						<div class="card-body px-2">
							<!-- Title -->
							<h5 class="card-title">
								<a href="${path}/hotFestivalDetail?id=${fItem.contentid}"
									class="stretched-link">${fItem.title}</a>
							</h5>
							<!-- Price and rating -->
							<div class="d-flex justify-content-between align-items-center">
								<small class=" text-success fw-light"><strong>${fItem.eventstartdate}
										~ ${fItem.eventenddate}</strong></small>
							</div>
						</div>
					</div>
					<!-- Card END -->
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- ======================= 이달의 행사 END -->

<!-- ======================= 추천 문화시설 1줄 START -->
<section class="pb-0">
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h3 class="mb-0">추천 문화시설</h3>
			</div>
			<div class="text-end">
				<a class="btn btn-link fw-normal ms-sm-3 p-0"
					href="${path}/hotCultureContent"> 더 보기 <i
					class="fi-arrow-long-right ms-2"></i>
				</a>
			</div>
		</div>

		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-7" data-autoplay="true"
				data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3"
				data-items-lg="3" data-items-md="2" data-items-sm="1">

				<!-- Offer card START -->
				<c:forEach var="cItem" items="${cList}" begin="0" end="5">
					<div>
						<div class="card">
							<img src="${cItem.firstimage}"
								style="width: auto; height: 17rem;" class="card-img" alt="">
							<!-- Card body -->
							<div
								class="position-absolute top-100 start-50 translate-middle w-100">
								<div
									class="card-body text-center bg-mode shadow rounded mx-4 p-3">
									<h6 class="card-title mb-1">
										<a>${cItem.title}</a>
									</h6>
									<small>${cItem.addr1}</small>
									<div class="mt-2">
										<a href="${path}/hotCultureDetail?id=${cItem.contentid}"
											class="btn btn-sm btn-dark mb-0">더 알아보기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- Offer card END -->
			</div>
		</div>
		<!-- Slider END -->
	</div>

	<!--=======================추천 문화시설 2줄-->
	<div class="container">
		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-7" data-autoplay="true"
				data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3"
				data-items-lg="3" data-items-md="2" data-items-sm="1">

				<!-- Offer card START -->
				<c:forEach var="cItem" items="${cList}" begin="6" end="11">
				<div>
					<div class="card">
						<img
							src="${cItem.firstimage}" style="width: auto; height: 17rem;"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">${cItem.title}</a>
								</h6>
								<small>${cItem.addr1}</small>
								<div class="mt-2">
									<a href="${path}/hotCultureDetail?id=${cItem.contentid}"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- Offer card END -->
			</div>
		</div>
		<!-- Slider END -->
	</div>
</section>
<!-- ======================= 추천 문화시설 END -->

<!-- ======================= 슬라이드 후기 -->
<div class="col-12 text-center mt-7">
  <h3 class="mb-4">이달의 리뷰</h3>
</div>
<section class="pb-0 py-md-3 mt-3" style="background-color: #ace1d9;">
	<div class="container">
		<div class="row">
			<!-- Slider START -->
			<div class="col-lg-11 mx-auto">
				<div class="tiny-slider arrow-round arrow-border arrow-hover">
					<div class="tiny-slider-inner" data-edge="2" data-items="1">

						<!-- Slide item START -->
						<div class="px-4 px-md-5">
							<div class="row justify-content-between align-items-center">

								<div class="col-md-6 col-lg-5 position-relative">
									<!-- Element -->
									<div
										class="position-absolute top-0 start-0 translate-middle z-index-9 mt-7 ms-4">
										<img src="${path}/resources/assets/images/element/02.svg"
											class="h-60px bg-orange rounded p-2" alt="">
									</div>

									<!-- Svg decoration -->
									<figure
										class="position-absolute bottom-0 end-0 d-none d-sm-block mb-n5 me-n5">
										<svg width="326px" height="335px" viewBox="0 0 326 335">
											<path class="fill-primary opacity-1"/>
										</svg>
									</figure>

									<!-- Image -->
									<img src="${path}/resources/img/boardpic/15.jpg"
										class="rounded-3 position-relative" alt="">
								</div>

								<div class="col-md-6 col-lg-6">
									<!-- Quote -->
									<span class="display-3 mb-0 text-primary"><i class="bi bi-quote"></i></span>
									<!-- Content -->
									<h5 class="fw-light">지난 주말에 종로거리- 광화문 전체에서 연등회가 진행되었는데요! 연등회의 시작은 약 1200여년 전 신라시대때부터 고려시대, 조선의 관등놀이를 거치면서 현대까지 이어져오는 축제라고 해요. 
									광화문에서 전통적인 모습의 등이나 불을 뿜어내는 용, 귀여운 캐릭터 느낌의 등도 불 수 있었습니다. 로라는 이번에 본 것 중에 불 뿜어내는 용이 가장 기억에 남는다고 하더라구요! <br/></h5>
									<!-- Title -->
									<h6 class="mb-0">김영</h6>
									<span>연등회 서울축제/핫플 가볼만한곳</span>
								</div>
							</div>
						</div>
						<!-- Slide item END -->

						<!-- Slide item START -->
						<div class="px-4 px-md-5">
							<div class="row justify-content-between align-items-center">

								<div class="col-md-6 col-lg-5 position-relative">
									<!-- Element -->
									<div class="position-absolute top-0 start-0 translate-middle mt-7 ms-4 z-index-9">
										<img src="assets/images/element/03.svg" class="h-60px bg-orange p-2 rounded" alt="">
									</div>

									<!-- Svg decoration -->
									<figure class="position-absolute bottom-0 end-0 mb-n5 me-n5 d-none d-sm-block">
										<svg width="326px" height="335px" viewBox="0 0 326 335">
											<path class="fill-primary opacity-1"/>
										</svg>
									</figure>

									<!-- Image -->
									<img src="${path}/resources/img/boardpic/16.jpg" class="rounded-3 position-relative" alt="">
								</div>

								<div class="col-md-6 col-lg-6">
									<!-- Quote -->
									<span class="display-3 mb-0 text-primary"><i
										class="bi bi-quote"></i></span>
									<!-- Content -->
									<h5 class="fw-light">서울에 장미축제가 있었어? 나는 왜 이제안거지.. 5월에만 볼 수 있는 서울 축제 지금 바로 레쯔고우! 지역은 중랑장미공원인데요 지하철로 태릉입구역에 내리서 다리만 건너면 딱! 여기에 도착을 합니다.</h5>
									<!-- Rating -->
									<ul class="list-inline small mb-2">
									</ul>
									<!-- Title -->
									<h6 class="mb-0">임정</h6>
									<span>서울장미 축제 실시간 현황</span>
								</div>
							</div>
						</div>
						<!-- Slide item END -->

					</div>
				</div>
			</div>
			<!-- Slider END -->
		</div>
	</div>
</section>
<!-- ======================= 슬라이드 후기 END -->

<!-- ======================= 관광지 추천 -->
<!-- Title -->
<div class="mt-7 mb-5">
	<div class="col-12 text-center">
		<h3 class="mb-0">관광지는 어때요?</h3>
	</div>
</div>
	<div class="text-end">
		<a class="btn btn-link fw-normal ms-sm-3 p-0"
			href="${path}/hotTourList"> 더 보기 <i
			class="fi-arrow-long-right ms-2"></i>
		</a>
	</div>
<div	style="padding-bottom: 10px; display: flex; justify-content: center; align-items: center; margin-top: 1px; margin-bottom: 10px;">
	<c:forEach var="tItem" items="${tList}" begin="0" end="2">
		<div class="box rounded-2"
			style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
			onmouseover="this.style.filter = 'brightness(50%)'; this.querySelector('.text-overlay').style.opacity = '1';"
			onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
			<a class="d-block flex-shrink-0 " href="${path}/hotTourListDetail?id=${tItem.contentid}">
				<img src="${tItem.firstimage}"
				style="width: 100%; height: auto; object-fit: contain;">
				<div class="text-overlay"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
					<p style="color: #ffffff; font-weight: bold; font-size: 150%;">${tItem.title}</p>
				</div>
			</a>
		</div>
	</c:forEach>
</div>
<div
	style="padding-bottom: 10px; display: flex; justify-content: center; align-items: center; margin-top: 1px; margin-bottom: 10px;">
	<c:forEach var="tItem" items="${tList}" begin="3" end="5">
		<div class="box rounded-2"
			style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
			onmouseover="this.style.filter = 'brightness(50%)'; this.querySelector('.text-overlay').style.opacity = '1';"
			onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
			<a class="d-block flex-shrink-0 " href="${path}/hotTourListDetail?id=${tItem.contentid}">
				<img src="${tItem.firstimage}" style="width: 100%; height: auto; object-fit: contain;">
				<div class="text-overlay" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
					<p style="color: #ffffff; font-weight: bold; font-size: 150%;">${tItem.title}</p>
				</div>
			</a>
		</div>
	</c:forEach>
</div>


<!-- ===============================booing 템플릿==================================== -->
<!-- Bootstrap JS -->
<!-- <script src="/booking\booking_v1.1.0\template\assets\vendor\bootstrap\dist\js\bootstrap.bundle.min.js"></script>  이거 풀면 검색창 드롭다운 메뉴 오류남-->

<!-- Vendors -->
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/jarallax/jarallax.min.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/jarallax/jarallax.min.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/jarallax/jarallax-video.min.js"></script>
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="${path}/resources/booking/booking_v1.1.0/template/assets/js/functions.js"></script>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

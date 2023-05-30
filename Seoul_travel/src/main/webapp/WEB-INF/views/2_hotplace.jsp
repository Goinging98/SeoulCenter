<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!--검색바 관련-->
<style>
.searchbarmoveTop {
	position: absolute;
	top: 460px;
	left: calc(50% - 590px);
	width: 510px;
	max-width: 100%;
	margin: 0 auto;
	resize: horizontal;
	z-index: 1;
}
</style>


<section class="jarallax bg-dark zindex-1 py-xxl-1" data-jarallax
	data-speed="0.5" style="margin-top: 100px;">
	<span class="img-overlay bg-transparent opacity-100"
		style="background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.588), rgba(0, 0, 0, 0.588));"></span>
	<div class="jarallax-img"
		style="background-image: url(img/hotplace/party.jpeg);"></div>
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
				<p class="fs-xs text-white">
					Find great places to stay, eat, shop, and local experts. Plan your trip with <span style="color: #25af9b;">서울 상담소</span>
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
		</div>

		<div class="row g-4">
			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\cats.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>강남구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">뮤지컬
								캣츠</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.5<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>

			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\cultureNight.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>종로구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">서울
								문화의 밤</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.8<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>

			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\nightMarket.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>동대문구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">서울밤도깨비야시장</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.6<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>


			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3">
						<!-- Image -->
						<img src="img\hotplace\chicago.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>송파구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">뮤지컬
								CHICAGO</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.8<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>
		</div>
		<!-- Row END -->
	</div>

	<div class="container">
		<div class="row g-4">
			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\cats.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>강남구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">뮤지컬
								캣츠</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.5<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>

			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\cultureNight.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>종로구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">서울
								문화의 밤</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.8<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>

			<!-- Hotel item -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3"
						style="width: 273px; height: 395px; display: flex; justify-content: center;">
						<!-- Image -->
						<img src="img\hotplace\nightMarket.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>동대문구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">서울밤도깨비야시장</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<small class=" text-success fw-light"><strong>2023.08.23
									~ 2023.08.31</strong></small>
							<h6 class="mb-0">
								4.6<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>


			<!-- ============= 이달의 행사 2줄 -->
			<div class="col-sm-6 col-xl-3">
				<!-- Card START -->
				<div class="card card-img-scale overflow-hidden bg-transparent">
					<!-- Image and overlay -->
					<div class="card-img-scale-wrapper rounded-3">
						<!-- Image -->
						<img src="img\hotplace\chicago.jpeg" class="card-img"
							alt="hotplace image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link">
								<i class="bi bi-geo-alt me-2"></i>송파구
							</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title">
							<a href="2.2_hotplaceDetailed .html" class="stretched-link">뮤지컬
								CHICAGO</a>
						</h5>
						<!-- Price and rating -->
						<div class="d-flex justify-content-between align-items-center">
							<h6 class="text-success mb-0">
								150,000 <small class="fw-light"> ￦ /starting at</small>
							</h6>
							<h6 class="mb-0">
								4.8<i class="fa-solid fa-star text-warning ms-1"></i>
							</h6>
						</div>
					</div>
				</div>
				<!-- Card END -->
			</div>
		</div>
		<!-- Row END -->
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
		</div>

		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-7" data-autoplay="true"
				data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3"
				data-items-lg="3" data-items-md="2" data-items-sm="1">

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\06.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\07.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\08.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\05.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
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
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\06.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\07.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\08.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img
							src="/booking\booking_v1.1.0\template\assets\images\offer\05.jpg"
							class="card-img" alt="">
						<!-- Card body -->
						<div
							class="position-absolute top-100 start-50 translate-middle w-100">
							<div
								class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1">
									<a href="#">성수 팝업스토어</a>
								</h6>
								<small>2023.02 ~</small>
								<div class="mt-2">
									<a href="2.2_hotplaceDetailed .html"
										class="btn btn-sm btn-dark mb-0">더 알아보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->
			</div>
		</div>
		<!-- Slider END -->
	</div>
</section>
<!-- ======================= 추천 문화시설 END -->

<!-- ======================= 슬라이드 후기 -->
<section class="pb-0 py-md-5 mt-7" style="background-color: #ace1d9;">
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
										<img src="assets/images/element/02.svg"
											class="h-60px bg-orange rounded p-2" alt="">
									</div>

									<!-- Svg decoration -->
									<figure
										class="position-absolute bottom-0 end-0 d-none d-sm-block mb-n5 me-n5">
										<svg width="326px" height="335px" viewBox="0 0 326 335">
											<path class="fill-primary opacity-1"
												d="M7.3,0C3.3,0,0,3.3,0,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,3.3,11.3,0,7.3,0z
												M59.2,0.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,4,63.2,0.7,59.2,0.7L59.2,0.7z	M111.1,1.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,4.7,115.1,1.5,111.1,1.5 C111.1,1.5,111.1,1.5,111.1,1.5L111.1,1.5z M163,2.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C170.3,5.5,167,2.2,163,2.2C163,2.2,163,2.2,163,2.2L163,2.2z M214.9,2.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,6.2,218.9,2.9,214.9,2.9C214.9,2.9,214.9,2.9,214.9,2.9L214.9,2.9z M266.8,3.7 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,6.9,270.8,3.7,266.8,3.7C266.8,3.7,266.8,3.7,266.8,3.7L266.8,3.7z M318.7,4.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,7.7,322.7,4.4,318.7,4.4C318.7,4.4,318.7,4.4,318.7,4.4L318.7,4.4z M7.3,52.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,55.9,11.4,52.7,7.3,52.7C7.3,52.7,7.3,52.7,7.3,52.7L7.3,52.7z M59.2,53.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,56.7,63.3,53.4,59.2,53.4C59.2,53.4,59.2,53.4,59.2,53.4L59.2,53.4z M111.1,54.1c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,57.4,115.2,54.1,111.1,54.1C111.1,54.1,111.1,54.1,111.1,54.1L111.1,54.1z M163,54.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.3,58.1,167.1,54.9,163,54.9C163,54.9,163,54.9,163,54.9L163,54.9zM214.9,55.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,58.9,219,55.6,214.9,55.6C214.9,55.6,214.9,55.6,214.9,55.6L214.9,55.6z M266.8,56.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,59.6,270.9,56.3,266.8,56.3C266.8,56.3,266.8,56.3,266.8,56.3L266.8,56.3z M318.7,57c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,60.3,322.8,57.1,318.7,57C318.7,57,318.7,57,318.7,57L318.7,57zM7.3,105.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.7,108.6,11.4,105.3,7.3,105.3C7.3,105.3,7.3,105.3,7.3,105.3L7.3,105.3z M59.2,106c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.6,109.3,63.3,106.1,59.2,106C59.2,106,59.2,106,59.2,106L59.2,106z M111.1,106.8c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.5,110.1,115.2,106.8,111.1,106.8C111.1,106.8,111.1,106.8,111.1,106.8L111.1,106.8zM163,107.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.4,110.8,167.1,107.5,163,107.5C163,107.5,163,107.5,163,107.5L163,107.5z M214.9,108.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.3,111.5,219,108.3,214.9,108.2C214.9,108.2,214.9,108.3,214.9,108.2L214.9,108.2z M266.8,109c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.2,112.3,270.9,109,266.8,109C266.8,109,266.8,109,266.8,109L266.8,109zM318.7,109.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326.1,113,322.8,109.7,318.7,109.7C318.7,109.7,318.7,109.7,318.7,109.7L318.7,109.7z M7.3,158c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,161.3,11.3,158,7.3,158z M59.2,158.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,162,63.2,158.7,59.2,158.7C59.2,158.7,59.2,158.7,59.2,158.7L59.2,158.7z M111.1,159.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,162.7,115.1,159.5,111.1,159.4C111.1,159.4,111.1,159.4,111.1,159.4L111.1,159.4z M163,160.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.3,163.5,167,160.2,163,160.2C163,160.2,163,160.2,163,160.2L163,160.2z M214.9,160.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,164.2,218.9,160.9,214.9,160.9C214.9,160.9,214.9,160.9,214.9,160.9L214.9,160.9zM266.8,161.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,164.9,270.8,161.6,266.8,161.6C266.8,161.6,266.8,161.6,266.8,161.6L266.8,161.6z M318.7,162.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,165.6,322.7,162.4,318.7,162.4C318.7,162.4,318.7,162.4,318.7,162.4L318.7,162.4z M7.3,210.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,213.9,11.4,210.7,7.3,210.6C7.3,210.6,7.3,210.6,7.3,210.6L7.3,210.6zM59.2,211.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,214.7,63.3,211.4,59.2,211.4C59.2,211.4,59.2,211.4,59.2,211.4L59.2,211.4z M111.1,212.1c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,215.4,115.2,212.1,111.1,212.1C111.1,212.1,111.1,212.1,111.1,212.1L111.1,212.1z M163,212.8c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.3,216.1,167.1,212.8,163,212.8C163,212.8,163,212.8,163,212.8L163,212.8z M214.9,213.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,216.8,219,213.6,214.9,213.6C214.9,213.6,214.9,213.6,214.9,213.6L214.9,213.6z M266.8,214.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,217.6,270.9,214.3,266.8,214.3C266.8,214.3,266.8,214.3,266.8,214.3L266.8,214.3z M318.7,215c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,218.3,322.8,215,318.7,215C318.7,215,318.7,215,318.7,215L318.7,215z M7.3,263.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.7,266.6,11.4,263.3,7.3,263.3C7.3,263.3,7.3,263.3,7.3,263.3L7.3,263.3z M59.2,264c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.6,267.3,63.3,264,59.2,264C59.2,264,59.2,264,59.2,264L59.2,264z M111.1,264.8c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.5,268,115.2,264.8,111.1,264.8C111.1,264.8,111.1,264.8,111.1,264.8L111.1,264.8z M163,265.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.4,268.8,167.1,265.5,163,265.5C163,265.5,163,265.5,163,265.5L163,265.5z M214.9,266.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.3,269.5,219,266.2,214.9,266.2C214.9,266.2,214.9,266.2,214.9,266.2L214.9,266.2z M266.8,267c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.2,270.2,270.9,267,266.8,267C266.8,267,266.8,267,266.8,267L266.8,267z M318.7,267.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326.1,271,322.8,267.7,318.7,267.7C318.7,267.7,318.7,267.7,318.7,267.7L318.7,267.7z M7.4,316c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.7,319.2,11.4,316,7.4,316C7.3,316,7.3,316,7.4,316L7.4,316z M59.3,316.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.6,320,63.3,316.7,59.3,316.7C59.2,316.7,59.2,316.7,59.3,316.7L59.3,316.7z M111.2,317.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.5,320.7,115.2,317.4,111.2,317.4C111.1,317.4,111.1,317.4,111.2,317.4L111.2,317.4z M163.1,318.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.4,321.4,167.1,318.2,163.1,318.2C163,318.2,163,318.2,163.1,318.2L163.1,318.2z M215,318.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.3,322.2,219,318.9,215,318.9C214.9,318.9,214.9,318.9,215,318.9L215,318.9z M266.9,319.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.2,322.9,270.9,319.6,266.9,319.6C266.8,319.6,266.8,319.6,266.9,319.6L266.9,319.6z M318.8,320.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326.1,323.6,322.8,320.4,318.8,320.4C318.7,320.4,318.7,320.4,318.8,320.4L318.8,320.4z" />
										</svg>
									</figure>

									<!-- Image -->
									<img src="img\hotplace\human01.jpg"
										class="rounded-3 position-relative" alt="">
								</div>

								<div class="col-md-6 col-lg-6">
									<!-- Quote -->
									<span class="display-3 mb-0 text-primary"><i
										class="bi bi-quote"></i></span>
									<!-- Content -->
									<h5 class="fw-light">밤도깨비야시장 작년에 못가서 이번에 기대하면서 갔는데 역시나였습니다
										여러분 꼭가세요 한번가세요 두번가세요 맛있는거 완전 많습니다!!</h5>
									<!-- Rating -->
									<ul class="list-inline small mb-2">
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item"><i
											class="fa-solid fa-star-half-alt text-warning"></i></li>
									</ul>
									<!-- Title -->
									<h6 class="mb-0">홍길동</h6>
									<span>20대</span>
								</div>
							</div>
						</div>
						<!-- Slide item END -->

						<!-- Slide item START -->
						<div class="px-4 px-md-5">
							<div class="row justify-content-between align-items-center">

								<div class="col-md-6 col-lg-5 position-relative">
									<!-- Element -->
									<div
										class="position-absolute top-0 start-0 translate-middle mt-7 ms-4 z-index-9">
										<img src="assets/images/element/03.svg"
											class="h-60px bg-orange p-2 rounded" alt="">
									</div>

									<!-- Svg decoration -->
									<figure
										class="position-absolute bottom-0 end-0 mb-n5 me-n5 d-none d-sm-block">
										<svg width="326px" height="335px" viewBox="0 0 326 335">
											<path class="fill-primary opacity-1"
											<!-- 너무 길어서 없앨 수 있는지 확인 필요 -->
												d="M7.3,0C3.3,0,0,3.3,0,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,3.3,11.3,0,7.3,0z M59.2,0.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,4,63.2,0.7,59.2,0.7L59.2,0.7z M111.1,1.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,4.7,115.1,1.5,111.1,1.5 C111.1,1.5,111.1,1.5,111.1,1.5L111.1,1.5z M163,2.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C170.3,5.5,167,2.2,163,2.2C163,2.2,163,2.2,163,2.2L163,2.2z M214.9,2.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,6.2,218.9,2.9,214.9,2.9C214.9,2.9,214.9,2.9,214.9,2.9L214.9,2.9z M266.8,3.7 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,6.9,270.8,3.7,266.8,3.7 C266.8,3.7,266.8,3.7,266.8,3.7L266.8,3.7z M318.7,4.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C326,7.7,322.7,4.4,318.7,4.4C318.7,4.4,318.7,4.4,318.7,4.4L318.7,4.4z M7.3,52.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,55.9,11.4,52.7,7.3,52.7C7.3,52.7,7.3,52.7,7.3,52.7L7.3,52.7z M59.2,53.4 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,56.7,63.3,53.4,59.2,53.4 C59.2,53.4,59.2,53.4,59.2,53.4L59.2,53.4z M111.1,54.1c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C118.4,57.4,115.2,54.1,111.1,54.1C111.1,54.1,111.1,54.1,111.1,54.1L111.1,54.1z M163,54.9c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.3,58.1,167.1,54.9,163,54.9C163,54.9,163,54.9,163,54.9L163,54.9z M214.9,55.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,58.9,219,55.6,214.9,55.6 C214.9,55.6,214.9,55.6,214.9,55.6L214.9,55.6z M266.8,56.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C274.1,59.6,270.9,56.3,266.8,56.3C266.8,56.3,266.8,56.3,266.8,56.3L266.8,56.3z M318.7,57c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,60.3,322.8,57.1,318.7,57C318.7,57,318.7,57,318.7,57L318.7,57z M7.3,105.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.7,108.6,11.4,105.3,7.3,105.3 C7.3,105.3,7.3,105.3,7.3,105.3L7.3,105.3z M59.2,106c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C66.6,109.3,63.3,106.1,59.2,106C59.2,106,59.2,106,59.2,106L59.2,106z M111.1,106.8c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.5,110.1,115.2,106.8,111.1,106.8C111.1,106.8,111.1,106.8,111.1,106.8L111.1,106.8z M163,107.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.4,110.8,167.1,107.5,163,107.5 C163,107.5,163,107.5,163,107.5L163,107.5z M214.9,108.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C222.3,111.5,219,108.3,214.9,108.2C214.9,108.2,214.9,108.3,214.9,108.2L214.9,108.2z M266.8,109c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.2,112.3,270.9,109,266.8,109C266.8,109,266.8,109,266.8,109L266.8,109z M318.7,109.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326.1,113,322.8,109.7,318.7,109.7 C318.7,109.7,318.7,109.7,318.7,109.7L318.7,109.7z M7.3,158c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C14.6,161.3,11.3,158,7.3,158z M59.2,158.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C66.5,162,63.2,158.7,59.2,158.7C59.2,158.7,59.2,158.7,59.2,158.7L59.2,158.7z M111.1,159.4c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.4,162.7,115.1,159.5,111.1,159.4C111.1,159.4,111.1,159.4,111.1,159.4 L111.1,159.4z M163,160.2c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C170.3,163.5,167,160.2,163,160.2C163,160.2,163,160.2,163,160.2L163,160.2z M214.9,160.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.2,164.2,218.9,160.9,214.9,160.9C214.9,160.9,214.9,160.9,214.9,160.9L214.9,160.9z M266.8,161.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,164.9,270.8,161.6,266.8,161.6 C266.8,161.6,266.8,161.6,266.8,161.6L266.8,161.6z M318.7,162.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C326,165.6,322.7,162.4,318.7,162.4C318.7,162.4,318.7,162.4,318.7,162.4L318.7,162.4z M7.3,210.6c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.6,213.9,11.4,210.7,7.3,210.6C7.3,210.6,7.3,210.6,7.3,210.6L7.3,210.6z M59.2,211.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.5,214.7,63.3,211.4,59.2,211.4 C59.2,211.4,59.2,211.4,59.2,211.4L59.2,211.4z M111.1,212.1c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C118.4,215.4,115.2,212.1,111.1,212.1C111.1,212.1,111.1,212.1,111.1,212.1L111.1,212.1z M163,212.8 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.3,216.1,167.1,212.8,163,212.8 C163,212.8,163,212.8,163,212.8L163,212.8z M214.9,213.6c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C222.2,216.8,219,213.6,214.9,213.6C214.9,213.6,214.9,213.6,214.9,213.6L214.9,213.6z M266.8,214.3c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.1,217.6,270.9,214.3,266.8,214.3C266.8,214.3,266.8,214.3,266.8,214.3 L266.8,214.3z M318.7,215c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326,218.3,322.8,215,318.7,215 C318.7,215,318.7,215,318.7,215L318.7,215z M7.3,263.3c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C14.7,266.6,11.4,263.3,7.3,263.3C7.3,263.3,7.3,263.3,7.3,263.3L7.3,263.3z M59.2,264c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.6,267.3,63.3,264,59.2,264C59.2,264,59.2,264,59.2,264L59.2,264z M111.1,264.8 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C118.5,268,115.2,264.8,111.1,264.8 C111.1,264.8,111.1,264.8,111.1,264.8L111.1,264.8z M163,265.5c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C170.4,268.8,167.1,265.5,163,265.5C163,265.5,163,265.5,163,265.5L163,265.5z M214.9,266.2c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C222.3,269.5,219,266.2,214.9,266.2C214.9,266.2,214.9,266.2,214.9,266.2 L214.9,266.2z M266.8,267c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0 C274.2,270.2,270.9,267,266.8,267C266.8,267,266.8,267,266.8,267L266.8,267z M318.7,267.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3 c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C326.1,271,322.8,267.7,318.7,267.7C318.7,267.7,318.7,267.7,318.7,267.7L318.7,267.7z M7.4,316 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C14.7,319.2,11.4,316,7.4,316C7.3,316,7.3,316,7.4,316 L7.4,316z M59.3,316.7c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C66.6,320,63.3,316.7,59.3,316.7 C59.2,316.7,59.2,316.7,59.3,316.7L59.3,316.7z M111.2,317.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C118.5,320.7,115.2,317.4,111.2,317.4C111.1,317.4,111.1,317.4,111.2,317.4L111.2,317.4z M163.1,318.2 c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C170.4,321.4,167.1,318.2,163.1,318.2 C163,318.2,163,318.2,163.1,318.2L163.1,318.2z M215,318.9c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3 c0,0,0,0,0,0C222.3,322.2,219,318.9,215,318.9C214.9,318.9,214.9,318.9,215,318.9L215,318.9z M266.9,319.6c-4,0-7.3,3.3-7.3,7.3 c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0C274.2,322.9,270.9,319.6,266.9,319.6C266.8,319.6,266.8,319.6,266.9,319.6 L266.9,319.6z M318.8,320.4c-4,0-7.3,3.3-7.3,7.3c0,4,3.3,7.3,7.3,7.3c4,0,7.3-3.3,7.3-7.3c0,0,0,0,0,0
												C326.1,323.6,322.8,320.4,318.8,320.4C318.7,320.4,318.7,320.4,318.8,320.4L318.8,320.4z" />
										</svg>
									</figure>

									<!-- Image -->
									<img src="img\hotplace\human02.jpg"
										class="rounded-3 position-relative" alt="">
								</div>

								<div class="col-md-6 col-lg-6">
									<!-- Quote -->
									<span class="display-3 mb-0 text-primary"><i
										class="bi bi-quote"></i></span>
									<!-- Content -->
									<h5 class="fw-light">밤도깨비야시장 작년에 못가서 이번에 기대하면서 갔는데 역시나였습니다
										여러분 꼭가세요 한번가세요 두번가세요 맛있는거 완전 많습니다!!</h5>
									<!-- Rating -->
									<ul class="list-inline small mb-2">
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item me-0"><i
											class="fa-solid fa-star text-warning"></i></li>
										<li class="list-inline-item"><i
											class="fa-solid fa-star text-warning"></i></li>
									</ul>
									<!-- Title -->
									<h6 class="mb-0">김길동</h6>
									<span>20대</span>
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

<div style="padding-bottom: 10px; display: flex; justify-content: center; align-items: center; margin-top: 1px; margin-bottom: 10px;">
	<div class="box rounded-2"
		style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
		onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
		onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
		<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
			<img src="img\hotplace\lotteTower.jpeg"
			style="width: 100%; height: auto; object-fit: contain;">
			<div class="text-overlay"
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
				<p style="color: #ffffff; font-weight: bold; font-size: 40px;">롯데타워</p>
			</div>
		</a>
	</div>
	<div class="box rounded-2"
		style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
		onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
		onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
		<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
			<img src="img\hotplace\royalpalace.jpeg"
			style="width: 100%; height: auto; object-fit: contain;">
			<div class="text-overlay"
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
				<p style="color: white; font-weight: bold; font-size: 40px;">경복궁</p>
			</div>
		</a>
	</div>
	<div class="box rounded-2"
		style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
		onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
		onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
		<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
			<img src="img\hotplace\lotteWorld.jpeg"
			style="width: 100%; height: auto; object-fit: contain;">
			<div class="text-overlay"
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
				<p style="color: white; font-weight: bold; font-size: 40px;">롯데월드</p>
			</div>
		</a>
	</div>
</div>

<div class="">
	<div style="padding-bottom: 10px; display: flex; justify-content: center; align-items: center; margin-top: 10px; margin-bottom: 10px;">
		<div class="box rounded-2"
			style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
			onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
			onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
			<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
				<img src="img\hotplace\dMuseum.jpeg"
				style="width: 100%; height: auto; object-fit: contain;">
				<div class="text-overlay"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
					<p style="color: rgb(255, 255, 255); font-weight: bold; font-size: 40px;">디뮤지엄</p>
				</div>
			</a>
		</div>
		<div class="box rounded-2"
			style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
			onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
			onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
			<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
				<img src="img\hotplace\seoulArtsCenter.jpeg"
				style="width: 100%; height: auto; object-fit: contain;">
				<div class="text-overlay"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
					<p style="color: white; font-weight: bold; font-size: 30px;">예술의
						전당</p>
				</div>
			</a>
		</div>
		<div class="box rounded-2"
			style="width: 350px; height: 200px; margin-right: 15px; margin-left: 15px; overflow: hidden;"
			onmouseover="this.style.filter = 'brightness(70%)'; this.querySelector('.text-overlay').style.opacity = '1';"
			onmouseout="this.style.filter = 'none'; this.querySelector('.text-overlay').style.opacity = '0';">
			<a class="d-block flex-shrink-0 " href="2.2_hotplaceDetailed .html">
				<img src="img\hotplace\coex.jpeg"
				style="width: 100%; height: auto; object-fit: contain;">
				<div class="text-overlay"
					style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 0;">
					<p style="color: white; font-weight: bold; font-size: 40px;">코엑스</p>
				</div>
			</a>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

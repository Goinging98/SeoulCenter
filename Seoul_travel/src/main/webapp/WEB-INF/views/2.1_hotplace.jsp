<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />




<!-- 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url('${path}/resources/img/community/d94ed70d0a33341d.jpg' ); background-position: center left; background-size: cover; margin-top: 120px;">
	<div class="container ">
		<div class="row ">
			<div class="col-lg-8 py-xxl-5 my-lg-4 ">
				<a href="#" class="badge text-bg-primary mb-2"><i
					class="fas fa-circle me-2 small fw-bold"></i></a>
				<h1 class="mice text-white fw-bold mb-2"></h1>
				<p class="mice lead text-white fw-bold mb-0"></p>
			</div>
		</div>
	</div>
</section>

<!-- Page container-->
<div class="container mb-md-4 mt-0 pt-4">
	<!-- Breadcrumb-->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="${path}/main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="${path}/hotMain"><strong>핫플레이스</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>핫플레이스
					상세</strong></li>

		</ol>
	</nav>
	<!-- Sponsored posts-->
</div>
</header>

<div class="container mb-md-4 py-2" style="margin-top: 60px;">

	<!-- List of posts + Sidebar-->
	<div class="row">
		<!-- Sidebar (offcanvas)-->
		<aside class="col-lg-3">
			<div class="offcanvas offcanvas-start offcanvas-collapse"
				id="blog-sidebar">

				<div class="offcanvas-header shadow-sm mb-2">
					<h2 class="h5 offcanvas-title">Sidebar</h2>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">
					<!-- Sorting-->
					<div class="d-flex align-items-center mb-4">
						<label class="d-inline-block me-2 pe-1 text-muted text-nowrap"
							for="sort"><i
							class="fi-arrows-sort mt-n1 me-1 align-middle opacity-80"></i> 정렬
							: </label> <select class="form-select" id="sort">
							<option>인기순</option>
							<option>최신순</option>
							<option>조회순</option>
							<option>댓글순</option>
						</select>
					</div>
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text"
							placeholder="검색어를 입력해주세요."><i
							class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					<!-- Categories-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4 ">
						<div class="card-body ">
							<h3 class="h5">카테고리</h3>
							<a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="2.1_hotplaceTouristSpot.html">관광지 <span
								class=" ms-394">${tCount}</span></a> <a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="2.1_hotplaceTouristSpot.html">문화시설 <span
								class=" ms-300">${cCount}</span></a> <a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="2.1_hotplaceTouristSpot.html">축제/공연 행사 <span
								class=" ms-300">${fCount}</span></a>
							<!-- <a class="nav-link fw-normal d-flex justify-content-between py-1 px-0" href="#">일식
                            <span class=" ms-2">(1)</span></a>
                            <a class="nav-link fw-normal d-flex justify-content-between py-1 px-0" href="#">등등등...
                              <span class=" ms-2">(8)</span></a> -->
						</div>
					</div>
					<!-- Tags-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h4 class="h5">핫플레이스 태그</h4>
							<div class="d-flex flex-wrap mb-n1">
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이거
									필요한가요?</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">가볼래
									터~?</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">여기어때?</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이집
									맛집</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이번주
									핫플</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">SNS
									핫플!!</button>
							</div>
						</div>

						<!-- Subscribe-->
						<div class="card card-flush mb-4"></div>
					</div>
				</div>
		</aside>
		<!-- Articles list-->
		<div class="col-lg-9">
			<div class="ps-lg-3">

				<!-- Article-->
				<div class="card card-horizontal border-0 mb-4">

					<div
						class="tns-carousel-wrapper  overflow-hidden rounded-2 position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						style="max-height: 16rem; width: 23rem;">
						<div class="tns-carousel-inner "
							data-carousel-options='{"gutter": 16}'>

							<!-- Image item -->
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production166/d1485/178c9f54-0fb1-40fc-bbef-c53f40f5a41a.jpg"></img>
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production60/d893/3172bd6f-726c-4561-810f-deec13d17a6e.jpg?impolicy=fcrop&w=800&h=533&q=medium"></img>
						</div>
					</div>

					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-2">
						<span class="badge badge-lg badge-floating text-white"
							style="background-color: #28c9a9;">BEST</span>
					</div>

					<div class="card-bodypb-lg-5 ">

						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="2.2_hotplaceDetailed .html">1관광지</a>
						</h3>
						<p class="fs-sm text-muted">주소</p>

						<!-- Price and Button -->
						<div
							class="d-sm-flex justify-content-sm-between align-items-center mt-md-auto">
							<!-- Price -->
							<div class="mt-3 mt-sm-0" style="margin-bottom: -280px;">
								<a href="2.2_hotplaceDetailed .html"
									class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Article-->
				<div class="card card-horizontal border-0 mb-4">
					<div
						class="tns-carousel-wrapper  overflow-hidden rounded-2 position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						style="width: 23em; height: auto;">
						<div class="tns-carousel-inner "
							data-carousel-options='{"gutter": 16}'>

							<!-- Image item -->
							<img href="5.2_communityBlog.html"
								src="https://tour.jongno.go.kr/cultural/images/main/mm_con_img2.jpg"></img>
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production60/d893/3172bd6f-726c-4561-810f-deec13d17a6e.jpg?impolicy=fcrop&w=800&h=533&q=medium"></img>
						</div>
					</div>

					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-2">
						<span class="badge badge-lg badge-floating text-white"
							style="background-color: #28c9a9;">BEST</span>
					</div>

					<div class="card-bodypb-lg-5 ">

						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="2.2_hotplaceDetailed .html">1관광지</a>
						</h3>
						<p class="fs-sm text-muted">주소</p>

						<!-- Price and Button -->
						<div
							class="d-sm-flex justify-content-sm-between align-items-center mt-md-auto">
							<!-- Price -->
							<div class="mt-3 mt-sm-0" style="margin-bottom: -280px;">
								<a href="2.2_hotplaceDetailed .html"
									class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
							</div>
						</div>



					</div>
				</div>

				<!-- Article-->
				<div class="card card-horizontal border-0 mb-4">

					<div
						class="tns-carousel-wrapper  overflow-hidden rounded-2 position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						style="width: 23em; height: auto;">
						<div class="tns-carousel-inner "
							data-carousel-options='{"gutter": 16}'>

							<!-- Image item -->
							<img href="5.2_communityBlog.html"
								src="https://cdn.crowdpic.net/detail-thumb/thumb_d_B9563664E38955F551DDD69E8E1931D6.jpg"></img>
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production60/d893/3172bd6f-726c-4561-810f-deec13d17a6e.jpg?impolicy=fcrop&w=800&h=533&q=medium"></img>
						</div>
					</div>

					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-2">
						<span class="badge badge-lg badge-floating text-white"
							style="background-color: #28c9a9;">BEST</span>
					</div>

					<div class="card-bodypb-lg-5 ">

						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="2.2_hotplaceDetailed .html">1관광지</a>
						</h3>
						<p class="fs-sm text-muted">주소</p>

						<!-- Price and Button -->
						<div
							class="d-sm-flex justify-content-sm-between align-items-center mt-md-auto">
							<!-- Price -->
							<div class="mt-3 mt-sm-0" style="margin-bottom: -280px;">
								<a href="2.2_hotplaceDetailed .html"
									class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
							</div>
						</div>



					</div>
				</div>
				<!-- Article-->
				<div class="card card-horizontal border-0 mb-4">

					<div
						class="tns-carousel-wrapper  overflow-hidden rounded-2 position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						style="width: 23em; height: auto;">
						<div class="tns-carousel-inner "
							data-carousel-options='{"gutter": 16}'>

							<!-- Image item -->
							<img href="5.2_communityBlog.html"
								src="https://www.agoda.com/wp-content/uploads/2019/03/Seoul-attractions-N-Seoul-Tower.jpg"></img>
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production60/d893/3172bd6f-726c-4561-810f-deec13d17a6e.jpg?impolicy=fcrop&w=800&h=533&q=medium"></img>
						</div>
					</div>

					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-2">
						<span class="badge badge-lg badge-floating text-white"
							style="background-color: #28c9a9;">BEST</span>
					</div>

					<div class="card-bodypb-lg-5 ">

						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="2.2_hotplaceDetailed .html">1관광지</a>
						</h3>
						<p class="fs-sm text-muted">주소</p>

						<!-- Price and Button -->
						<div
							class="d-sm-flex justify-content-sm-between align-items-center mt-md-auto">
							<!-- Price -->
							<div class="mt-3 mt-sm-0" style="margin-bottom: -280px;">
								<a href="2.2_hotplaceDetailed .html"
									class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
							</div>
						</div>



					</div>
				</div>

				<!-- Article-->
				<div class="card card-horizontal border-0 mb-4">

					<div
						class="tns-carousel-wrapper  overflow-hidden rounded-2 position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						style="width: 23em; height: auto;">
						<div class="tns-carousel-inner "
							data-carousel-options='{"gutter": 16}'>

							<!-- Image item -->
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production95/d985/6a9ba160-5eed-4feb-a4de-43a450a6c413.jpg"></img>
							<img href="5.2_communityBlog.html"
								src="https://a.cdn-hotels.com/gdcs/production60/d893/3172bd6f-726c-4561-810f-deec13d17a6e.jpg?impolicy=fcrop&w=800&h=533&q=medium"></img>
						</div>
					</div>

					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-2">
						<span class="badge badge-lg badge-floating text-white"
							style="background-color: #28c9a9;">BEST</span>
					</div>

					<div class="card-bodypb-lg-5 ">

						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="2.2_hotplaceDetailed .html">1관광지</a>
						</h3>
						<p class="fs-sm text-muted">주소</p>

						<!-- Price and Button -->
						<div
							class="d-sm-flex justify-content-sm-between align-items-center mt-md-auto">
							<!-- Price -->
							<div class="mt-3 mt-sm-0" style="margin-bottom: -280px;">
								<a href="2.2_hotplaceDetailed .html"
									class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
							</div>
						</div>



					</div>
				</div>

				<!-- Pagination-->
				<div class="d-flex justify-content-end pt-4 border-top">
					<nav aria-label="Blog pagination">
						<ul class="pagination mb-0">
							<li class="page-item d-sm-none"><span
								class="page-link page-link-static">1 / 8</span></li>
							<li class="page-item active d-none d-sm-block"
								aria-current="page"><span class="page-link">1<span
									class="visually-hidden">(current)</span></span></li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="2.1_hotplace.html">2</a></li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="2.1_hotplace.html">3</a></li>
							<li class="page-item d-none d-sm-block">...</li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="2.1_hotplace.html">8</a></li>
							<li class="page-item"><a class="page-link"
								href="2.1_hotplace.html" aria-label="Next"><i
									class="fi-chevron-right"></i></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	</main>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url( 'img/city-guide/accommodation/hotel2.jpeg' ); background-position: center left; background-size: cover; margin-top: 120px;">
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
			<li class="breadcrumb-item"><a href="1_main_page.html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="1_main_page.html"><strong>숙소</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>호텔</strong></li>

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
							<option>리뷰순</option>
						</select>
					</div>
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text"
							placeholder="검색어를 입력해주세요."><i
							class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					<!-- Categories-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h3 class="h5">카테고리</h3>
							<a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">호텔<span
								class="text-muted ms-394">(2)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">펜션<span
								class="text-muted ms-300">(4)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">모텔<span
								class="text-muted ms-300">(5)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">게스트하우스<span
								class="text-muted ms-2">(1)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">한옥<span
								class="text-muted ms-2">(8)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4.1_accommodationCategory.html">기타<span
								class="text-muted ms-2">(8)</span></a>
						</div>
					</div>
					<!-- Tags-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h4 class="h5">여행 태그</h4>
							<div class="d-flex flex-wrap mb-n1">
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">핫플콕콕</button>
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
					</div>
					<!-- Subscribe-->
					<div class="card card-flush mb-4"></div>
				</div>
			</div>
		</aside>
		<!-- 숙소 리스트 -->
		<div
			class="col-lg-8 col-xl-9 position-relative overflow-hidden pb-5 pt-0 px-3 px-xl-4 px-xxl-5">
			<!-- Title-->
			<div
				class="d-sm-flex align-items-center justify-content-between pb-3 pb-sm-4">
				<h1 class="h2 mb-sm-0">숙소 검색결과</h1>
			</div>
			<!-- Sorting-->
			<div
				class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch my-2">
				<hr class="d-none d-sm-block w-100 mx-4">
				<div
					class="d-none d-sm-flex align-items-center flex-shrink-0 text-muted">
					<i class="fi-check-circle me-2"></i><span class="fs-sm mt-n1">148
						results</span>
				</div>
			</div>
			<!-- Catalog grid-->
			<div
				class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4">
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/01.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Berlin
								Business Hotel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
								class="text-muted">&nbsp;(48)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/02.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Big
								Tree Cottage</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span
								class="text-muted">&nbsp;(24)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/03.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Grand
								Resort &amp; Spa</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
								class="text-muted">&nbsp;(43)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/04.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Serene
								Stays</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
								class="text-muted">&nbsp;(12)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/05.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Leisure
								Inn</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.0</b><span
								class="text-muted">&nbsp;(9)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/06.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Bliss
								Apartment</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span
								class="text-muted">&nbsp;(32)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/07.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Merry
								Berry Motel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
								class="text-muted">&nbsp;(13)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/08.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Serenity
								Hotel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
								class="text-muted">&nbsp;(17)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/09.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Repose
								Hotel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
								class="text-muted">&nbsp;(45)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/10.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Tranquil
								Hostel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.0</b><span
								class="text-muted">&nbsp;(15)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/11.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Soothe
								&amp; Stay</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.6</b><span
								class="text-muted">&nbsp;(10)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/12.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Best
								Nest Apartment</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
								class="text-muted">&nbsp;(10)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/13.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Pine
								Cottage</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
								class="text-muted">&nbsp;(12)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/14.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Greenpoint
								Boutique Hotel</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
								class="text-muted">&nbsp;(12)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
						</ul>
					</article>
				</div>
				<!-- Item-->
				<div class="col pb-sm-2">
					<article class="position-relative">
						<div class="position-relative mb-3">
							<button
								class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to Favorites">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="img/city-guide/catalog/15.jpg"
								alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Crystal
								Apartment</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i
								class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
								class="text-muted">&nbsp;(52)</span></li>
							<li class="list-inline-item pe-1"><i
								class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li>
							<li class="list-inline-item pe-1"><i
								class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>rkdska</li>
						</ul>
					</article>
				</div>
			</div>
			<!-- Pagination-->
			<nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
				<ul class="pagination mb-1">
					<li class="page-item d-sm-none"><span
						class="page-link page-link-static">1 / 5</span></li>
					<li class="page-item active d-none d-sm-block" aria-current="page"><span
						class="page-link">1<span class="visually-hidden">(current)</span></span></li>
					<li class="page-item d-none d-sm-block"><a class="page-link"
						href="#">2</a></li>
					<li class="page-item d-none d-sm-block"><a class="page-link"
						href="#">3</a></li>
					<li class="page-item d-none d-sm-block">...</li>
					<li class="page-item d-none d-sm-block"><a class="page-link"
						href="#">8</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"><i class="fi-chevron-right"></i></a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

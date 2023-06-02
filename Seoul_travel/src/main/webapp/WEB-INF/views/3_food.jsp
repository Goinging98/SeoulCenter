<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url('${path}/resources/img/food/platter-gf9324db74_1280.jpg' ); background-position: center left; background-size: cover; margin-top: 120px;">
	<div class="container ">
		<div class="row ">
			<div class="col-lg-8 py-xxl-5 my-lg-4 ">
				<h1 class="mice text-white fw-bold mb-2"></h1>
				<p class="mice lead text-white fw-bold mb-0"></p>
			</div>
		</div>
	</div>
</section>


<!-- Page container-->
<div class="container mb-md-4 mt-0 pt-4">
	<!-- 해당 페이지 위치 표시 : HOME>맛집 -->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>맛집</strong></li>
		</ol>
	</nav>
</div>


<form name="searchForm" action="${path}/foodMain" method="get">
<div class="container mb-md-4 py-2" style="margin-top: 60px;">
	<!-- List of posts + Sidebar-->
	<div class="row">
		<!-- Sidebar (offcanvas)-->
		<aside class="col-lg-3">
			<div class="offcanvas offcanvas-start offcanvas-collapse" id="blog-sidebar">
				<div class="offcanvas-body">
					<!-- Sorting-->
					<div class="d-flex align-items-center mb-4">
						<label class="d-inline-block me-2 pe-1 text-muted text-nowrap" for="sort">지역검색</label> 
						<select class="form-select" id="sort">
							<option>강남구</option>
							<option>강동구</option>
							<option>강복구</option>
							<option>강서구</option>
							<option>관징구</option>
							<option>구로구</option>
							<option>금천구</option>
							<option>노원구</option>
							<option>도봉구</option>
							<option>동대문구</option>
							<option>동작구</option>
							<option>마포구</option>
							<option>서대문구</option>
							<option>서초구</option>
							<option>성동구</option>
							<option>성북구</option>
							<option>송파구</option>
							<option>양천구</option>
							<option>영등포구</option>
							<option>용산구</option>
							<option>은평구</option>
							<option>종로구</option>
							<option>중구</option>
							<option>중랑구</option>
						</select>
					</div>
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text" placeholder="검색어를 입력해주세요.">
					</div>
					
					<!-- Categories 카테고리  -->
					<div class="card card-flush pb-2 pb-lg-0 mb-4 ">
						<div class="card-body ">
							<h3 class="h5">카테고리</h3>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="3.1_foodKorea.html">한식 <span class=" ms-394">(2)</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="3.1_foodKorea.html">중식 <span class=" ms-300">(4)</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="3.1_foodKorea.html">양식 <span class=" ms-300">(5)</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="3.1_foodKorea.html">일식 <span class=" ms-300">(5)</span></a>
						</div>
					</div>
					<!-- Tags 태그 -->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h4 class="h5">태그로 검색하는 맛집</h4>
							<div class="d-flex flex-wrap mb-n1">
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이거 필요한가요?</button>
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">가볼터~?</button>
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">여기어때?</button>
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이집맛집</button>
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이번주 핫플</button>
								<button class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">SNS핫플!!</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</aside>
		
		
		<!-- 맛집 리스트 -->
		<div class="col-lg-9">
			<div class="ps-lg-3">
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
											
						<!-- Card item START -->
						<c:forEach var="item" items="${list}">
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-4 position-relative">
									<!-- img START -->
									<div class=" overflow-hidden rounded-2 ">
										<div class="tns-carousel-inner" data-autoplay="false"
											data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<img src="${item.firstimage}" style="min-width: 279px; min-height: 209px; max-width:279px; min-height: 209px" alt="Card image">
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div class="card-body py-md-2 d-flex flex-column h-100 position-relative">
										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i
													class="star-rating-icon fi-star-filled active"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="star-rating-icon fi-star-filled active"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="star-rating-icon fi-star-filled active"></i></li>
												<li class="list-inline-item me-0 small"><i
													class="star-rating-icon fi-star-filled active"></i></li>
												<li class="list-inline-item me-0 small"></i><i
													class="star-rating-icon fi-star"></i></li>
											</ul>
										</div>

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="${path}/foodDetail?id=${item.contentid}">${item.title}</a>
										</h5>
										<small><i class="bi bi-geo-alt me-2"></i>${item.addr1}</small>
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
						</c:forEach>
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
										class="page-link" href="3_food.html">2</a></li>
									<li class="page-item d-none d-sm-block"><a
										class="page-link" href="3_food.html">3</a></li>
									<li class="page-item d-none d-sm-block">...</li>
									<li class="page-item d-none d-sm-block"><a
										class="page-link" href="3_food.html">8</a></li>
									<li class="page-item"><a class="page-link"
										href="3_food.html" aria-label="Next"><i
											class="fi-chevron-right"></i></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>
</div>

</form>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

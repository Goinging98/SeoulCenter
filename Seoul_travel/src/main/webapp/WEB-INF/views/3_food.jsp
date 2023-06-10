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
			<li class="breadcrumb-item active" aria-current="${path}/foodMain"><strong>맛집</strong></li>
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
				
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text" name="searchValue" placeholder="검색어를 입력해주세요.">
						<i	class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					
					<!-- Categories 카테고리  -->
					<div class="card card-flush pb-2 pb-lg-0 mb-4 ">
						<div class="card-body ">
							<h3 class="h5">카테고리</h3>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain">전체 <span class=" ms-394">${count}</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain?cat3=A05020100">한식 <span class=" ms-394">${koreacount}</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain?cat3=A05020200">양식 <span class=" ms-300">${westerncount}</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain?cat3=A05020300">일식 <span class=" ms-300">${japancount}</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain?cat3=A05020400">중식 <span class=" ms-300">${chinacount}</span></a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="${path}/foodMain?cat3=etc">기타 <span class=" ms-300">${elsecount}</span></a>
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
								<div class="row g-1">
									<!-- Card img -->
									<div class="col-md-4 position-relative">
										<!-- img START -->
										<div class="overflow-hidden rounded-2" style="max-height: 12rem; width: 19rem;">
											<div class="tns-carousel-inner" data-autoplay="false"
												data-arrow="true" data-dots="false" data-items="1">
												<!-- Image item -->
												<c:if test="${empty item.firstimage}">
													<img src="${path}/resources/images/restaurant.jpg" alt="Image">
												</c:if>
												<c:if test="${not empty item.firstimage}">
													<img src="${item.firstimage}" alt="Image">
												</c:if>
											</div>
										</div>
									</div>
									<!-- img END -->
	
									<!-- Card body -->
									<div class="col-md-8">
										<div class="card-body py-md-2 d-flex flex-column h-100 position-relative">
											<!-- Title -->
											<h5 class="card-title mb-1">
  												<a href="${path}/foodDetail?id=${item.contentid}" style="text-decoration: none">${item.title}</a>
											</h5>
											<small><i class="fi-map-pin fs-lg opacity-70 me-2"></i>${item.addr1}</small>
											<!-- Amenities -->
											<ul class="nav nav-divider mt-3">
												<li class="nav-item">${item.cat3}</li>
											</ul>
											<!-- Price and Button -->
											<div
												class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
												<!-- Button -->
	
												<!-- Price -->
												<div class="mt-3 mt-sm-0">
													<a href="${path}/foodDetail?id=${item.contentid}"
														class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- Card item END -->
						<br/><br/><br/>

						<!-- Pagination-->
						<div class="d-flex justify-content-end pt-4 border-top">
						<nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
					<ul class="pagination mb-1">
						<li class="page-item"><a class="page-link next-page"
							href="foodMain?page=${page-3}" aria-label="Next"><i
								class="fi-chevron-left"></i></a></li>
							

						<c:if test="${page > 2}">
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="foodMain?page=${page-2}&searchValue=${searchValue}">${page - 2}</a></li>
						</c:if>
						
						<c:if test="${page > 1}">
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="foodMain?page=${page-1}&searchValue=${searchValue}">${page - 1}</a></li>
						</c:if>
						
						<li class="page-item active d-none d-sm-block" aria-current="page"><span
							class="page-link">${page}<span class="visually-hidden">(current)</span></span></li>
						
						<c:if test="${page <= maxPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="foodMain?page=${page+1}&searchValue=${searchValue}">${page + 1}</a></li>
						</c:if>
						
						<c:if test="${page < maxPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="foodMain?page=${page+2}&searchValue=${searchValue}">${page + 2}</a></li>
						</c:if>
						
						<c:if test="${page < maxPage}">
						<li class="page-item"><a class="page-link next-page"
							href="foodMain?page=${page+3}&searchValue=${searchValue}" aria-label="Next"><i
								class="fi-chevron-right"></i></a></li>
								</c:if>
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

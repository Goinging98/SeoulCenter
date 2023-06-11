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
				<span class="star-rating">${loginMember.id}</span>
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
			<h1 class="h3 mb-md-0">찜한 맛집</h1>
		</div>
		
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
										<div class="tns-carousel-inner" data-autoplay="false" data-arrow="true" data-dots="false" data-items="1">
											<!-- Image item -->
											<a href="/mvc/foodDetail?id=134746">
												<img src="http://tong.visitkorea.or.kr/cms/resource/11/1291311_image2_1.jpg" style="min-width: 279px; min-height: 209px" alt="Card image">
											</a>
										</div>
									</div>
									<!-- img END -->
								</div>

								<!-- Card body -->
								<div class="col-md-8">
									<div class="card-body py-md-2 d-flex flex-column h-100 position-relative">

										<!-- Title -->
										<h5 class="card-title mb-1">
											<a href="/mvc/foodDetail?id=134746">개화</a>
										</h5>
										<small><i class="fi-map-pin fs-lg opacity-70 me-2"></i>서울특별시 중구 남대문로 52-5</small>
										<!-- Amenities -->
										<ul class="nav nav-divider mt-3">
											<li class="nav-item">중식</li>
										</ul>

										<!-- Price and Button -->
										<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
											<div class="mt-3 mt-sm-0">
												<a href="/mvc/foodDetail?id=134746" class="btn btn-sm btn-dark mb-0 w-100">더보기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
					</div>
				</article>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
		
		
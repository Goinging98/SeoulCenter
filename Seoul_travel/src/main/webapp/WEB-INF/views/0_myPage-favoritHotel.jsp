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
				<img class="rounded-circle border border-white" src="${path}/resources/img/avatars/29.png" width="100" alt="member">
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
						<a class="nav-link active" href="myaccomodation">찜한 숙소</a>
					</li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link" href="myfood">찜한 맛집</a>
					</li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1">
						<a class="nav-link" href="myreview">나의 리뷰</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between mb-4 pt-2">
			<h1 class="h3 mb-md-0">찜한 숙소</h1>
		</div>
		
		<!-- 리스트 -->
		<div class="row row-cols-lg-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-lg-4 mb-4">
			<!-- Item-->
			<!-- 3*2로 로드해올 예정 -->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"><i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="http://tong.visitkorea.or.kr/cms/resource/50/2815050_image2_1.jpg" alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="/mvc/accomDetail?id=142723">로얄호텔서울</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i class="fi-map-pin fs-lg opacity-70 me-2"></i>중구</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

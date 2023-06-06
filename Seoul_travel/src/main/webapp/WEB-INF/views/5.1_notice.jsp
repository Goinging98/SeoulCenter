<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url('${path}/resources/img/community/d94ed70d0a33341d.jpg'); background-position: center left; background-size: cover; margin-top: 120px;">
	<div class="container ">
		<div class="row ">
			<div class="col-lg-8 py-xxl-5 my-lg-4 ">
				<a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i></a>
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
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>공지사항</strong></li>
		</ol>
	</nav>
	<!-- Sponsored posts-->
</div>

<div class="container mb-md-4 py-2" style="margin-top: 60px;">

	<!-- List of posts + Sidebar-->
	<div class="row">
		<!-- Sidebar (offcanvas)-->
		<aside class="col-lg-3">
			<div class="offcanvas offcanvas-start offcanvas-collapse" id="blog-sidebar">
				<div class="offcanvas-header shadow-sm mb-2">
					<h2 class="h5 offcanvas-title">Sidebar</h2>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">
					<!-- Sorting-->
					<div class="d-flex align-items-center mb-4">
						<label class="d-inline-block me-2 pe-1 text-muted text-nowrap"
							for="sort"><i class="fi-arrows-sort mt-n1 me-1 align-middle opacity-80"></i> 
								정렬
						</label> 
						<select class="form-select" id="sort">
							<option>최신순</option>
							<option>조회순</option>
							<option>댓글순</option>
						</select>
					</div>
					
					<!-- Search-->
					
					<c:set var="searchType" value="${param.searchType}"/>
					<c:if test="${empty searchType}">
						<c:set var="searchType" value="${'title'}"/>
					</c:if>
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text" placeholder="검색어를 입력해주세요.">
							<i class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					<!-- Categories-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h3 class="h5">커뮤니티</h3>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="notice">공지사항</a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="food">맛집</a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomodation">숙소</a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="hotplace">핫플레이스</a>
							<a class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="qna">문의 남기기</a>
						</div>
					</div>
				</div>
			</div>
		</aside>
		
		
		<!-- 게시글 링크 -->
		<div class="col-lg-9">
			<div class="ps-lg-3">
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">서울여행 후기72편
								- 용산 삼각지역 맥주집 추천: 용리단길 및 부라보 선술집</a>
						</h3>
						<p class="fs-sm text-muted">처음 1차를 용산역 남쪽 한참 끝부분에서 먹었다. 외국인이
							많다해서 서울 용산쪽으로 왔는데 술집도 힙한곳을 가고싶어 검색을 했더니 삼각지역 근처로 나오는거다. 이 근처 힙한
							술집, 식당들은 죄다 여기있는거임!!.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#">
							<img class="rounded-circle" src="img/avatars/25.png" width="38" alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">계장쟁이 면봉</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1">
										<i class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.05.24
									</span>
									<span>
										<i class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>3 comments
									</span>
								</div>
							</div> 
						</a>
					</div>
				</article>
				
				
				<!-- 페이지 분할 -->
				<div class="d-flex justify-content-end pt-4 border-top">
					<nav aria-label="Blog pagination">
						<ul class="pagination mb-0">
							<li class="page-item d-sm-none"><span
								class="page-link page-link-static">1 / 8</span></li>
							<li class="page-item active d-none d-sm-block" aria-current="page"><span
								class="page-link">1<span class="visually-hidden">(current)</span></span></li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="5.1_communityAccommodation.html">2</a></li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="5.1_communityAccommodation.html">3</a></li>
							<li class="page-item d-none d-sm-block">...</li>
							<li class="page-item d-none d-sm-block"><a class="page-link"
								href="5.1_communityAccommodation.html">8</a></li>
							<li class="page-item"><a class="page-link"
								href="5.1_communityAccommodation.html" aria-label="Next"><i
									class="fi-chevron-right"></i></a></li>
						</ul>
					</nav>
				</div>
			
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

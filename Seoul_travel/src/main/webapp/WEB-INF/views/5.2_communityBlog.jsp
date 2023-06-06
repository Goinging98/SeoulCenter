<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
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
				<a href="#" class="badge text-bg-primary mb-2">
					<i class="fas fa-circle me-2 small fw-bold"></i>
				</a>
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
			<li class="breadcrumb-item"><strong>커뮤니티</strong></li>
			<li class="breadcrumb-item">
				<a href="/community/food"><strong>맛집</strong></a></li>
		</ol>
	</nav>
	
	<!-- 사진 -->
	<h1 class="h2 pb-3" style="text-align: center; margin-top: 100px;"><c:out value="${board.title}"/></h1>
	<div style="text-align: center;">
		<img class="rounded-3" src="${path}/resources/img/city-guide/community/restaurant2.jpeg"
			alt="Post image" width="800" height="150">
	</div>

	<div class="row mt-4 pt-3">
		<!-- 작성자 정보 -->
		<aside class="col-lg-4">
			<!-- Offcanvas-->
			<div class="offcanvas offcanvas-start offcanvas-collapse pe-lg-1"
				id="blog-sidebar">
				<div class="offcanvas-header shadow-sm mb-2">
					<h3 class="h5 offcanvas-title">Sidebar</h3>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">
					<!-- Author-->
					<div class="card card-flush py-2 py-lg-0 mb-4">
						<div class="card-body d-flex align-items-start">
							<img class="me-3 rounded-circle" src="${path}/resources/img/avatars/28.png" width="80" alt="Avatar">
							<div>
								<h4 class="h5 mb-2">
									<a class="nav-link stretched-link p-0 fw-bold"><c:out value="${board.writerId}"/></a>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</aside>
		
		<!-- 리뷰 - 글 파트 -->
		<div class="col-lg-8">
			<!-- Post meta-->
			<div class="d-flex flex-wrap border-bottom pb-3 mb-4">
				<a class="text-uppercase text-decoration-none border-end pe-3 me-3 mb-2"
					href="/community/food">맛집</a>
				<div class="d-flex align-items-center border-end pe-3 me-3 mb-2">
					<i class="fi-calendar-alt opacity-70 me-2"></i>
					<span><fmt:formatDate type="both" value="${board.createDate}"/></span>
				</div>
				<a class="nav-link-muted d-flex align-items-center mb-2" href="#"><i
					class="fi-chat-circle opacity-70 me-2"></i><span>comments exist</span></a>
			</div>
			<p class="fs-lg fw-bold text-dark mb-4">${board.title}</p>
			<p>${board.content}</p>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

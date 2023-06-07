<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<section class="container my-5 pt-lg-5 pt-4 pb-lg-5">
	<!-- Breadcrumbs-->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb pt-3 mb-4">
			<li class="breadcrumb-item"><a href="city-guide-home-v1.html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>1:1 고객센터</strong></li>
		</ol>
	</nav>
	<div class="row gy-4">
		<div class="col-md-6">
			<img class="rounded-3" src="img/city-guide/contacts/01.jpg"
				alt="Cover">
		</div>
		<div class="col-xl-5 offset-xl-1 col-md-6">
			<h1 class="mb-md-4 mb-3">문의등록</h1>
			<p class="mb-4 pb-md-2 fs-lg">
				어떠한 내용이라도 답변드릴 준비가 되어 있습니다! <br>문의를 보내주세요! 가능한 한 빨리 답변 드리도록
				하겠습니다.
			</p>
			<!-- Contact form-->
			<form
				class="needs-validation row row-cols-sm-2 row-cols-1 gy-sm-4 gy-3"
				novalidate>
				<div class="col">
					<label class="form-label" for="c-name">성명</label> <input
						class="form-control form-control-lg" id="c-name" type="text"
						required>
					<div class="invalid-tooltip mt-1">Please, enter your name</div>
				</div>
				<div class="col">
					<label class="form-label" for="c-email">E-mail</label> <input
						class="form-control form-control-lg" id="c-email" type="email"
						required>
					<div class="invalid-tooltip mt-1">Please, enter your email</div>
				</div>
				<div class="col">
					<label class="form-label" for="c-phone">전화번호</label> <input
						class="form-control form-control-lg" id="c-phone" type="tel"
						required>
					<div class="invalid-tooltip mt-1">Please, enter your phone</div>
				</div>
				<div class="col">
					<label class="form-label" for="c-subject">유형</label> <select
						class="form-select form-select-lg" id="c-subject" required>
						<option value="" selected disabled>문의유형을 선택하세요</option>
						<option value="Subject 1">계정</option>
						<option value="Subject 2">보안</option>
						<option value="Subject 3">기타</option>
					</select>
					<div class="invalid-tooltip mt-1">Please, choose your subject</div>
				</div>
				<div class="col-12 w-100">
					<label class="form-label" for="c-message">문의글</label>
					<textarea class="form-control form-control-lg" id="c-message"
						rows="4" required></textarea>
					<div class="invalid-tooltip mt-1">글을 입력해주세요.</div>
				</div>
				<div class="col-12 w-100">
					<button class="btn btn-lg btn-primary w-sm-auto w-100 mt-2"
						type="submit">제출</button>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Contact cards-->
<section class="container pb-5 mb-lg-5">
	<div class="row g-4">
		<div class="col-md-4">
			<a
				class="icon-box card card-body border-0 shadow-sm card-hover h-100 text-center"
				href="mailto:example@email.com">
				<div
					class="icon-box-media bg-faded-accent text-accent rounded-circle mx-auto mb-3">
					<i class="fi-mail"></i>
				</div> <span class="d-block mb-1 text-body">Drop us a line</span>
				<h3 class="h4 icon-box-title mb-0 opacity-90">Seuoultrip@email.com</h3>
			</a>
		</div>
		<div class="col-md-4">
			<a
				class="icon-box card card-body border-0 shadow-sm card-hover h-100 text-center"
				href="tel:4065550120">
				<div
					class="icon-box-media bg-faded-success text-success rounded-circle mx-auto mb-3">
					<i class="fi-device-mobile"></i>
				</div> <span class="d-block mb-1 text-body">Call us any time</span>
				<h3 class="h4 icon-box-title mb-0 opacity-90">(02) 1234-5678</h3>
			</a>
		</div>
		<div class="col-md-4">
			<a
				class="icon-box card card-body border-0 shadow-sm card-hover h-100 text-center"
				href="#">
				<div class="icon-box-media bg-faded-warning text-warning rounded-circle mx-auto mb-3">
					<i class="fi-instagram"></i>
				</div> <span class="d-block mb-1 text-body">Follow us</span>
				<h3 class="h4 icon-box-title mb-0 opacity-90">@seoul.center6</h3>
			</a>
		</div>
	</div>
</section>
<!-- Map location-->
<section class="container pb-5 mb-2 mb-lg-5">
	<div class="interactive-map rounded-3"
		data-map-options="{&quot;mapLayer&quot;: &quot;https://api.maptiler.com/maps/pastel/{z}/{x}/{y}.png?key=5vRQzd34MMsINEyeKPIs&quot;, &quot;coordinates&quot;: [51.5074, -0.1278], &quot;zoom&quot;: 10, &quot;markers&quot;: [{&quot;coordinates&quot;: [51.5074, -0.1278], &quot;popup&quot;: &quot;&lt;div class='p-3'&gt;&lt;h6&gt;Hi, I'm in London&lt;/h6&gt;&lt;p class='fs-sm pt-1 mt-n3 mb-0'&gt;Lorem ipsum dolor sit amet elit.&lt;/p&gt;&lt;/div&gt;&quot;}]}"
		style="height: 500px;"></div>
</section>
</main>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

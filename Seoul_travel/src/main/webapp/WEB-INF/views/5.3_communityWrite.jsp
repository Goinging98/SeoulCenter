<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
.col1 .form-control {
	width: 530px;
}

.col-12 .form-control {
	width: 130%;
}
</style>

<!-- Page content-->
<section class="container my-5 pt-lg-5 pt-4 pb-lg-5">
	<!-- Breadcrumbs-->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb pt-3 mb-4">
			<li class="breadcrumb-item"><a href="/mvc/main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="notice"><strong>커뮤니티</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>글쓰기</strong></li>
		</ol>
	</nav>
	
	<div class="row gy-4">
		<div class="col-xl-5 offset-xl-1 col-md-6">
			<h1 class="mb-md-4 mb-3">게시판 작성</h1>
			<p class="mb-4 pb-md-2 fs-lg">
				게시판에 글을 남겨 유익한 정보와 추억을 공유하세요!<br>
			</p>

			<!-- Contact form-->
			<form name="comnunitywrite" action="${path}/community/write" method="post" enctype="multipart/form-data" 
				class="needs-validation row row-cols-sm-2 row-cols-1 gy-sm-4 gy-3" novalidate>
				<div class="col1">
					<label class="form-label" for="c-title">제목</label> 
					<input class="form-control form-control-lg" id="c-title" type="text" required>
				</div>
				
				<div class="col"><!-- 빈공간 : 지우면 안됨  -->
					<div class="invalid-tooltip mt-1"></div>
				</div>
				
				<div class="col">
					<label class="form-label" for="c-name">작성자</label> 
					<input class="form-control form-control-lg" id="c-name" value="${loginMember.id}" readonly class="input-text">
				</div>

				<div class="col">
					<label class="form-label" for="c-subject">유형</label>
					<select class="form-select form-select-lg" id="c-subject" required>
						<option value="" selected disabled>카테고리 선택</option>
						<option value="B2">핫플레이스</option>
						<option value="B1">맛집</option>
						<option value="B3">숙소</option>
					</select>
				</div>
				<div class="col">
					<label class="form-label" for="c-image">이미지</label>
					<div class="custom-file">
						<input class="custom-file-input form-control-lg" id="c-phone" type="file" accept="image/*" required>
					</div>
					<div class="invalid-tooltip mt-1"></div>
				</div>

				<div class="col-12 w-100">
					<label class="form-label" for="c-message">게시판 글 </label>
					<textarea class="form-control form-control-lg" id="c-message" rows="6" cols="80%" required></textarea>
				</div>
				<div class="col-12 w-100">
					<button class="btn btn-lg btn-primary w-sm-auto w-100 mt-2" type="submit">등록</button>
					<button class="btn btn-lg btn-primary w-sm-auto w-100 mt-2" type="reset">취소</button>
				</div>
			</form>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script>
function s_function() {
	$('comnunitywrite').submit();
}
</script>



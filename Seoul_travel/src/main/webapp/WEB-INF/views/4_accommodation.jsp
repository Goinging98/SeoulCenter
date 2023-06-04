<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<c:forEach var="aItem" items="${aList}">
 	${aItem.title}
 	<br>
</c:forEach>

<!-- 상단 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url( '${path}/resources/img/city-guide/accommodation/hotel2.jpeg' ); background-position: center left; background-size: cover; margin-top: 120px;">
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
	<!-- Breadcrumb-->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>숙소</strong></li>
		</ol>
	</nav>
</div>

<form name="searchForm" action="${path}/accomMain" method="get">
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
							<option>강북구</option>
							<option>강서구</option>
							<option>광진구</option>
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
						<input class="form-control pe-5" type="text"name="searchValue" placeholder="검색어를 입력해주세요.">
					</div>
					<!-- Categories 카테고리 -->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h3 class="h5">카테고리</h3>
							<a	class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomCate">호텔<span
								class="text-muted ms-394">(2)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="4accomCate">펜션<span
								class="text-muted ms-300">(4)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomCate">모텔<span
								class="text-muted ms-300">(5)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomCate">게스트하우스<span
								class="text-muted ms-2">(1)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomCate">한옥<span
								class="text-muted ms-2">(8)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="accomCate">기타<span
								class="text-muted ms-2">(8)</span></a>
						</div>
					</div>
					<!-- Tags-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h4 class="h5">태그로 검색하는 숙소</h4>
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
		
		<!-- 숙소 리스트 -->
		<div class="col-lg-8 col-xl-9 position-relative overflow-hidden pb-5 pt-0 px-3 px-xl-4 px-xxl-5">
			<!-- Title-->
			<div class="d-sm-flex align-items-center justify-content-between pb-3 pb-sm-4">
				<h1 class="h2 mb-sm-0">숙소 검색결과</h1>
			</div>
			<!-- Sorting-->
			<div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch my-2">
				<hr class="d-none d-sm-block w-100 mx-4">
					<div class="d-none d-sm-flex align-items-center flex-shrink-0 text-muted">
						${count} results</div>
				</div>
			<!-- Catalog grid-->
			<div class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4" >
				<c:forEach var="item" items="${list}">
					<!-- Item-->
					<div class="col pb-sm-2">
						<article class="position-relative">
							<div class="position-relative mb-3">
									<button
										class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
										type="button" data-bs-toggle="tooltip"
										data-bs-placement="left" title="Add to Favorites">
										<i class="fi-heart"></i>
									</button>
									<img class="rounded-3" src="${item.firstimage}" style="width: 18rem; height: 12rem;"
									alt="Article img">
							</div>
							<h3 class="mb-2 fs-lg">
								<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}</a>
							</h3>
							<ul class="list-inline mb-0 fs-xs">
								<li class="list-inline-item pe-1"><b>5.0</b><span
									class="text-muted">&nbsp;(48)</span></li>
								<li class="list-inline-item pe-1">강남구</li>
							</ul>
						</article>
					</div>
				</c:forEach>
				
			</div>
			<!-- Pagination-->
<nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
  <ul class="pagination mb-1">
    <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
    <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
    <li class="page-item d-none d-sm-block"><a class="page-link" href="accomMain?page=2">2</a></li>
    <li class="page-item d-none d-sm-block"><a class="page-link" href="accomMain?page=3">3</a></li>
    <li class="page-item d-none d-sm-block"><a class="page-link" href="accomMain?page=4">4</a></li>
    <li class="page-item d-none d-sm-block"><a class="page-link" href="accomMain?page=5">5</a></li>
    <li class="page-item"><a class="page-link next-page" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
  </ul>
</nav>





		</div>
	</div>
</div>

</form>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

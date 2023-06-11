<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 리뷰 모달 팝업 -->
<div class="modal fade" id="modal-review" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
				<h3 class="modal-title mt-4 text-center">리뷰를 남겨주세요</h3>
				<button class="btn-close position-absolute top-0 end-0 mt-3 me-3"
					type="button" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body px-sm-5 px-4">
				<form class="needs-validation"  action="${path}/AccomoReplyWrite" method="post">
					<input type="hidden" name="contentid" value="${item.contentid}" />
					<input type="hidden" name="writerId" value="${loginMember.id}" />
					<div class="mb-4">
						<label class="form-label" for="review-text">
							리뷰<span class='text-danger'>*</span>
						</label>
						<textarea name="content" class="form-control" id="review-text" rows="5" required></textarea>
						<div class="invalid-feedback">Please write your review.</div>
					</div>
					<button class="btn btn-primary d-block rounded-pill w-100 mb-4" type="submit">리뷰 등록하기</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Page header-->
<section class="container pt-5 mt-5">
	<!-- Breadcrumb-->
	<nav class="mb-3 pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="accomMain"><strong>숙소</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>${item.title}</strong></li>
		</ol>
	</nav>
	<div
		class="d-sm-flex align-items-center justify-content-between mb-4 pb-sm-2">
		<h1 class="h2 me-3 mb-sm-0">${item.title}</h1>
		<div class="text-nowrap">
			<button
				class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle"
				type="button" data-bs-toggle="tooltip" title="Add to Wishlist">
				<i class="fi-heart"></i>
			</button>
		</div>
	</div>
	<!-- Nav pills-->
	<ul class="nav nav-pills border-bottom pb-3 mb-4">
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center"
			href="${path}/accomGall?id=${item.contentid}">갤러리</a></li>
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center"
			href="${path}/accomDetail?id=${item.contentid}">정보</a></li>
		<li class="nav-item"><a
			class="nav-link d-flex align-items-center active"
			href="${path}/accomRev?id=${item.contentid}">리뷰</a></li>
	</ul>
</section>

<!-- Page content-->
<section class="container pb-5 mb-md-4">
	<div class="row">
		<!-- Left column-->
		<div class="col-md-7 mb-md-0 mb-4 pb-md-0 pb-2">
			<!-- 리뷰 작성 버튼 -->
			<c:if test="${loginMember != null}">
				<div class="d-flex flex-sm-row flex-column align-items-sm-center justify-content-between mb-4 pb-4 border-bottom">
					<a class="btn btn-outline-primary rounded-pill mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal">
						<i class="fi-edit mt-n1 me-1 align-middle"></i>리뷰 작성하기
					</a>
				</div>
			</c:if>
			
			<!-- 리뷰 -->
			<div class="mb-4 pb-4 border-bottom">
				<c:if test="${!empty replyList}">
					<c:forEach var="reply" items="${replyList}">
						<div class="d-flex justify-content-between mb-3">
							<div class="d-flex align-items-center pe-2">
								<div class="ps-2">
									<h6 class="fs-base mb-0">${reply.name}</h6>
								</div>
							</div>
							<span class="text-muted fs-sm"><fmt:formatDate type="both" value="${reply.create_date}"/></span>
						</div>
						<p><c:out value="${reply.content}"/></p>
						<div class="d-flex align-items-center">
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty replyList}">
					<tr>
						<td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
					</tr>
				</c:if>
			</div>
			
			
			<!-- Pagination-->
			<nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
				<ul class="pagination mb-1">
					<li class="page-item"><a class="page-link next-page"
						href="accomMain?page=${page-3}" aria-label="Next"><i
							class="fi-chevron-left"></i></a></li>
					<c:if test="${page > 2}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="accomMain?page=${page-2}">${page - 2}</a></li>
					</c:if>
					<c:if test="${page > 1}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="accomMain?page=${page-1}">${page - 1}</a></li>
					</c:if>
					<li class="page-item active d-none d-sm-block" aria-current="page"><span
						class="page-link">${page}<span class="visually-hidden">(current)</span></span></li>
					
					<c:if test="${page <= maxPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="accomMain?page=${page+1}">${page + 1}</a></li>
					</c:if>
					<c:if test="${page < maxPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="accomMain?page=${page+2}">${page + 2}</a></li>
					</c:if>
					<c:if test="${page < maxPage}">
						<li class="page-item"><a class="page-link next-page"
							href="accomMain?page=${page+3}" aria-label="Next">
							<i class="fi-chevron-right"></i></a></li>
					</c:if>
				</ul>
			</nav>
		</div>
		
		<!-- Sidebar-->
		<aside class="col-md-5">
			<!-- Place card-->
			<div class="card mb-4 p-2 shadow-sm">
				<div class="card-body">
					<!-- Place info-->
					<div class="d-flex align-items-start mb-3 pb-2 border-bottom">
					  <div class="ps-2 ms-1">
					    <h3 class="h5 mb-2">${item.title}</h3>
					    <ul class="list-unstyled d-flex flex-wrap fs-sm">
					      <li class="me-2 mb-1 pe-1"><i class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i>${guAddress}</li>
					    </ul>
					  </div>
					</div>
					<!-- Place contacts-->
					<div class="mb-3 pb-3 ">
					  <h4 class="h5 mb-2">세부정보</h4>
					  <ul class="nav flex-column">
					    <li class="nav-item mb-2">
					      <div class="p-0 fw-normal d-flex align-items-start">
					        <div class="fi-map-pin mt-1 me-2 align-middle opacity-70"></div>${item.addr1}
					      </div>
					    </li>
					    <li class="nav-item mb-2">
					      <div class="d-inline-block p-0 fw-normal d-inline-flex align-items-start">
					        <div class="fi-phone mt-1 me-2 align-middle opacity-70"></div>${item.tel}
					      </div>
					    </li>
					    <li class="nav-item mb-2">
					      <div class="p-0 fw-normal d-flex align-items-start">
					        <div class="fi-globe mt-1 me-2 align-middle opacity-60"></div>${item.homepage}
					      </div>
					    </li>
					  </ul>
					</div>
					<!-- 예약페이지 연결 -->
					<div class="mb-3 pb-3 border-bottom">
					  <div class="row row-cols-sm-2 row-cols-1">
					    <div class="col">
					      <a id="reservationLink" class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" href="#" target="_blank" title="새창: 홈페이지로 이동">예약<i class="fi-chevron-right fs-sm ms-2"></i></a>
					    </div>
					  </div>
					</div>
					
					
					<script>
					    // HTML 문자열에서 주소 추출 함수
					    function extractURL(html) {
					        var tempDiv = document.createElement('div');
					        tempDiv.innerHTML = html;
					        var linkElement = tempDiv.firstChild;
					        return linkElement.getAttribute('href');
					    }
					
					    // 예약 버튼에 주소 적용
					    document.addEventListener('DOMContentLoaded', function() {
					        var homepageLink = '${item.homepage}'; // 주소가 포함된 문자열
					        var extractedURL = extractURL(homepageLink);
					        var reservationLink = document.getElementById('reservationLink');
					        reservationLink.href = extractedURL;
					    });
					</script>
					<!-- Location (Map) -->
					<div class="position-relative">
					  <!-- Location (Map) start -->
					  <div id="map" class="rounded" style="width: auto; height: 350px;"></div></div>
					  <!-- Location (Map) end -->
					  <div class="d-flex w-100 h-200 flex-column align-items-center " style="margin-top: 20px;">
					    <a class="btn btn-primary rounded-pill" href="https://www.google.com/maps/search/${item.title} ${item.addr1}" data-iframe="true" data-bs-toggle="lightbox"><i class="fi-route me-2"></i>위치 보기</a>
					  </div>
				</div>
			</div>
		</aside>
	</div>
</section>

<!-- 추천 숙소 -->
<section class="container pb-5 mb-lg-4">
	<div class="d-flex align-items-center justify-content-between mb-4 pb-2">
		<h2 class="h3 mb-0">추천 숙소</h2>
		<a class="btn btn-link fw-normal ms-sm-3 p-0"
			href="accomMain">더보기<i
			class="fi-arrow-long-right ms-2"></i></a>
	</div>
	<div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
		<div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
			<c:forEach var="item" items="${randomAccommodations}">
				<div>
					<div class="position-relative" >
						<div class="position-relative mb-3">
							<button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
								type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
								<i class="fi-heart"></i>
							</button>
							<img class="rounded-3" src="${item.firstimage}" style="width: 27rem; height: 16rem; alt="Article img">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="${path}/accomDetail?id=${item.contentid}">${item.title}</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1">
							<i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${guAddress}</li>
						</ul>
					</div>
				</div>
			</c:forEach>
			<!-- End Item -->
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />



<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31c2dc2677eb86c0811d24bdcfe862f4"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(${item.mapy}, ${item.mapx}), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
			{
			    content: '<div>${item.title}</div>', 
			    latlng: new kakao.maps.LatLng(${item.mapy}, ${item.mapx})
			},
	];
	
	for (var i = 0; i < positions.length; i ++) {
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions[i].latlng // 마커의 위치
	});
	
	// 마커에 표시할 인포윈도우를 생성합니다 
	var infowindow = new kakao.maps.InfoWindow({
	    content: positions[i].content // 인포윈도우에 표시할 내용
	});
	
	// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	// 이벤트 리스너로는 클로저를 만들어 등록합니다 
	// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}
	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	return function() {
	    infowindow.open(map, marker);
	};
	}
	
	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	return function() {
	    infowindow.close();
	};
	}
</script>
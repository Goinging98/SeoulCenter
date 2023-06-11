<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<div class="col-12 my-5"></div>
<!-- Page container-->
<div class="container  mt-0 pt-4">
	<!-- Breadcrumb-->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="${path}/main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="${path}/hotMain"><strong>핫플레이스</strong></a></li>
			<li class="breadcrumb-item"><a href="${path}/hotCultureContent"><strong>문화시설</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>${cItem.title}</strong></li>
		</ol>
	</nav>

	<!-- Page content-->

	<div class="d-flex justify-content-center">
		<h1 class=" h2 mb-5">${cItem.title}</h1>
	</div>

	<!-- Heart icon -->
	<div class="d-flex justify-content-center pb-2" style="margin-top: -40px;">
	</div>

	<!-- slide -->
	<div class="d-flex justify-content-center">
		<div class="tns-carousel-wrapper overflow-hidden d-flex rounded-3"
			style="width: 660px; height: auto;">
			<div class="tns-carousel-inner" data-carousel-options='{"gutter": 16}'>
				<img src="${cItem.firstimage}" alt="Image">
					<c:if test= "${not empty imgcItem}">
						<c:forEach var="imgcItem" items="${imgcItem}">					
							<img src="${imgcItem.originimgurl}" alt="Image"> 
						</c:forEach>
					</c:if>
			</div>
		</div>
	</div>


	<div class="row mt-4 pt-3">
		<!-- Post content-->
		<div class="col-lg-8">
			<!-- Post meta-->
			<div class="d-flex flex-wrap border-bottom pb-3 mb-4">
				<a class="text-uppercase text-decoration-none border-end pe-3 me-3 mb-2">개요</a>
			</div>
			<p class="fs-lg fw-bold text-dark mb-4">${cItem.overview}</p>

			<!-- Tags + Sharing-->
			<div class="pt-4 pb-5 mb-md-3">
				<div
					class="d-md-flex align-items-center justify-content-between border-top pt-4">
					<div class="d-flex align-items-center me-3 mb-3 mb-md-0">
						<div class="d-none d-sm-block fw-bold text-nowrap mb-2 me-2 pe-1">홈페이지: ${cItem.homepage}</div>
					</div>
				</div>
			</div>
			<!-- Review modal-->
			<div class="modal fade" id="modal-review" tabindex="-1">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
							<h3 class="modal-title mt-4 text-center">리뷰 작성하기</h3>
							<button class="btn-close position-absolute top-0 end-0 mt-3 me-3"
								type="button" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body px-sm-5 px-4">
							<form class="needs-validation" novalidate>
								<div class="mb-4">
									<label class="form-label" for="review-text">리뷰<span
										class='text-danger'>*</span></label>
									<textarea class="form-control" id="review-text" rows="5"
										placeholder="리뷰를 입력하세요" required></textarea>

								</div>
								<button class="btn btn-primary d-block rounded-pill w-100 mb-4"
									type="submit">리뷰 작성하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Specs-->

			<div id="comments">
				<h2 class="h4  ">리뷰</h2>
				<div class="row  ">

					<!-- Add review btn + Reviews sort-->
					<div class="d-flex flex-sm-row flex-column align-items-sm-center justify-content-between mb-4 pb-4 border-bottom">
						<a class="btn btn-outline-primary rounded-pill mb-sm-0 mb-3"
							href="#modal-review" data-bs-toggle="modal"><i
							class="fi-edit mt-n1 me-1 align-middle"></i>리뷰 작성하기</a>
					</div>

					<!-- Review-->
					<div class="mb-4 pb-4 border-bottom">
						<div class="d-flex justify-content-between mb-3">
							<div class="d-flex align-items-center pe-2">
								<img class="rounded-circle me-1" src="img/avatars/03.jpg"
									width="48" alt="Avatar">
								<div class="ps-2">
									<h6 class="fs-base mb-0">홍길동</h6>
									<span class="star-rating"><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i></span>
								</div>
							</div>
							<span class="text-muted fs-sm">2021.6.7</span>
						</div>
						<p>경복궁 가고 싶어요</p>
						<div class="d-flex align-items-center">
							<button class="btn-like" type="button">
								<i class="fi-like"></i><span>(3)</span>
							</button>
							<div class="border-end me-1">&nbsp;</div>
							<button class="btn-dislike" type="button">
								<i class="fi-dislike"></i><span>(0)</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Sidebar-->
		<aside class="col-lg-4">
			<div class="offcanvas offcanvas-end offcanvas-collapse"
				id="blog-sidebar">
				<div class="offcanvas-header shadow-sm mb-2">
					<h2 class="h5 mb-0">Sidebar</h2>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">

					<!-- Author widget-->
					<div class="card card-flush pb-3 pb-lg-0 mb-4">
						<div class="card-body">

							<h3 class="h5 mb-2">상세정보</h3>

							<div class="text-nowrap">
								<i class="fi-map-pin fs-lg opacity-90"></i> 
								<span class="align-middle">${cItem.addr1}</span>
							</div>
							<div class="ps-4">
								<t class="fs-sm">우편번호 : ${cItem.zipcode}</t>
							</div>
							
							<!-- Location (Map) start -->
							<div>
								<div class="position-relative mb-2">
									<div id="map" style="width: 345px; height: 200px;"></div>
								</div>
							</div>
							<!-- Location (Map) end -->


							<div class="text-pre-line ">
								<i class="fi-phone fs-lg opacity-70 me-2"></i> 
								<span class="align-middle">전화번호</span>
								<div class="align-middle px-2">${cItem.tel}</div>
							<div class="text-nowrap">
								<i class="fi-info-square fs-lg opacity-70 me-2"></i> 
								<span class="align-middle">안내</span>
							</div>
								<div class="align-middle px-2">- 이용시간</div>
								<div class="align-middle px-3">${cItem.usetimeculture}</div>
								<div class="align-middle px-2">- 쉬는날</div>
								<div class="align-middle px-3">${cItem.restdateculture}</div>
								<div class="align-middle px-2">- 주차</div>
								<div class="align-middle px-3">${cItem.parkingculture}</div>
								<div class="align-middle px-3">${cItem.parkingfee} </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</aside>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />



<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31c2dc2677eb86c0811d24bdcfe862f4"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(${cItem.mapy}, ${cItem.mapx}), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
			{
			    content: '<div>${cItem.title}</div>', 
			    latlng: new kakao.maps.LatLng(${cItem.mapy}, ${cItem.mapx})
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



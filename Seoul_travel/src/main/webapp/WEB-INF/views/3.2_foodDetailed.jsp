<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page container-->
<div class="container  mt-0 pt-4">
	<!-- Breadcrumb-->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="1_main_page.html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="3_food.html"><strong>맛집</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>${item.title}</strong></li>
		</ol>
	</nav>

	<!-- Page content-->
	<div class="container   mb-md-4 ">
		<!-- Title + Sharing-->
		<div class="row">
			<div class="col-md-8">
			
				<!-- Gallery-->
				<div class="tns-carousel-wrapper">
					<div class="tns-slides-count  ">
						<i class="fi-image fs-lg me-2"></i>
						<div class="ps-1">
							<span class="tns-current-slide fs-5 fw-bold"></span><span
								class="fs-5 fw-bold">/</span><span
								class="tns-total-slides fs-5 fw-bold"></span>
						</div>
					</div>
					<div class="tns-carousel-inner">
<!--  						data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
-->						<div>
							<img class="rounded-3"
								src="${item.firstimage}" alt="Image" style= "width:100%; height:100%">
						</div>
						<div>
							<img class="rounded-3"
								src="https://blog.kakaocdn.net/dn/dGr3Ur/btrvvciLeKl/mwFEMIknLWeofThts39RGk/img.jpg"
								alt="Image">
						</div>

					</div>
				</div>
				<ul class="tns-thumbnails" id="thumbnails">
					<li class="tns-thumbnail"><img
						src="${item.firstimage}"
						alt="Thumbnail"></li>
					<li class="tns-thumbnail"><img
						src="https://blog.kakaocdn.net/dn/dGr3Ur/btrvvciLeKl/mwFEMIknLWeofThts39RGk/img.jpg"
						alt="Thumbnail"></li>
				</ul>

				<!-- Review modal-->
				<div class="modal fade" id="modal-review" tabindex="-1">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div
								class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
								<h3 class="modal-title mt-4 text-center">리뷰 작성하기</h3>
								<button
									class="btn-close position-absolute top-0 end-0 mt-3 me-3"
									type="button" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body px-sm-5 px-4">
								<form class="needs-validation" novalidate>
									<div class="mb-3">
										<label class="form-label" for="review-name">닉네임 <span
											class='text-danger'>*</span></label> <input class="form-control"
											type="text" id="review-name" placeholder="이름을 입력하세요" required>
									</div>
									<div class="mb-3">
										<label class="form-label" for="review-email">이메일 <span
											class='text-danger'>*</span></label> <input class="form-control"
											type="email" id="review-email" placeholder="이메일을 입력하세요"
											required>
									</div>
									<div class="mb-3">
										<label class="form-label" for="review-rating">별점 <span
											class='text-danger'>*</span></label> <select
											class="form-control form-select" id="review-rating" required>

											<option value="5 stars">5 점</option>
											<option value="4 stars">4 점</option>
											<option value="3 stars">3 점</option>
											<option value="2 stars">2 점</option>
											<option value="1 star">1 점</option>
										</select>
									</div>
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

				<div class="py-5">
					<h2 class="h3">맛집 리뷰</h2>
					<div class="row">

						<!-- Add review btn + Reviews sort-->
						<div	class="d-flex flex-sm-row flex-column align-items-sm-center justify-content-between mb-4 pb-4 border-bottom">
							<a class="btn btn-outline-primary rounded-pill mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal">
								<i	class="fi-edit mt-n1 me-1 align-middle">
								</i>리뷰 작성하기</a>
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
							<p>등촌 가고 싶어요</p>
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
						<!-- Review-->
						<div class="mb-4 pb-4 border-bottom">
							<div class="d-flex justify-content-between mb-3">
								<div class="d-flex align-items-center pe-2">
									<img class="rounded-circle me-1" src="img/avatars/13.png"
										width="48" alt="Avatar">
									<div class="ps-2">
										<h6 class="fs-base mb-0">Darrell Steward</h6>
										<span class="star-rating"><i
											class="star-rating-icon fi-star-filled active"></i><i
											class="star-rating-icon fi-star-filled active"></i><i
											class="star-rating-icon fi-star-filled active"></i><i
											class="star-rating-icon fi-star"></i><i
											class="star-rating-icon fi-star"></i></span>
									</div>
								</div>
								<span class="text-muted fs-sm">Dec 1, 2020</span>
							</div>
							<p>Vel dictum nunc ut tristique. Egestas diam amet, ut proin
								hendrerit. Dui accumsan at phasellus tempus consequat dignissim.</p>
							<div class="d-flex align-items-center">
								<button class="btn-like" type="button">
									<i class="fi-like"></i><span>(0)</span>
								</button>
								<div class="border-end me-1">&nbsp;</div>
								<button class="btn-dislike" type="button">
									<i class="fi-dislike"></i><span>(1)</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- 음식점 정보 -->
			<div class="card col-md-4 pt-5 pt-md-0 px-4 pr-5 pb-4 card-dark">
				<div class="sticky-top pt-5">
					<div class="d-none d-md-block ">
						<!-- Heart icon -->
						<div class="col-6 pr-5">
						</div>
						<div class="h1" >${item.title}</div>
						<span class="placeholder col-12 placeholder-xs"></span>
						<div class="d-flex align-items-center mb-1 ">
							<div class="text-nowrap border-end border-light pe-3 me-3">
								<div class="text-nowrap">
									<i class="fi-cafe fs-lg opacity-70 me-2 "></i> <span
										class="align-middle">${item.firstmenu}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-map-pin fs-lg opacity-70 me-2"></i> <span
										class="align-middle">${item.addr1}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-clock fs-lg opacity-70 me-2"> </i> <span
										class="align-middle mb-3">${item.opentimefood}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-plane fs-lg opacity-70 me-2"> </i> <span>${item.restdatefood}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-phone fs-lg opacity-70 me-2"> </i> <span>${item.infocenterfood}</span>
								</div>
							</div>
						</div>
						<span class="placeholder col-12 placeholder-xs"></span>

						<div class="bg-secondary rounded-2 mt-3">
							<div class="d-flex align-items-center mx-2 ">
								${item.overview}
							</div>
						</div>
					</div>
										
					<!-- Card with icon boxes-->
					<div class="card card-body p-4 card-light mb-4">
						<div class="row row-cols-2 row-cols-sm-4 gx-3 gx-xl-4 gy-4">
							<div class="col text-dark text-center">
								<div class="d-table bg-secondary rounded-3 mx-auto p-3">
									<img src="${path}/resources/img/food/free-icon-parking.png" width="48" alt="Icon">
								</div>
								<div class="fs-sm pt-1 mt-1">${item.parkingfood}</div>
							</div>
							<div class="col text-dark text-center">
								<div class="d-table bg-secondary k rounded-3 mx-auto p-3">
									<img src="${path}/resources/img/food/free-icon-food.png" width="48" alt="Icon">
								</div>
								<div class="fs-sm pt-1 mt-1">포장 ${item.packing}</div>
							</div>
						</div>
					</div>


					<!-- Location (Map)-->

							<!-- Location (Map) start -->
							<div>
								<div class="position-relative mb-2">
								<p class="mb-0 fs-md text-center">${item.addr1}</p>
									<div id="map" style="width: 345px; height: 200px;">
									</div>
								</div>
							</div>
							<!-- Location (Map) end -->
							</div>
						</div>
					</div>
				</div>
			</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=31c2dc2677eb86c0811d24bdcfe862f4"></script>
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

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
			<li class="breadcrumb-item"><a href="${path}/hotMainDetail"><strong>핫플레이스
						상세</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>${cItem.title}</strong></li>
		</ol>
	</nav>

	<!-- Page content-->
	<div class="d-flex justify-content-center">
		<h1 class=" h5 pt-5" style="color: #55AC9B;">고궁</h1>
	</div>

	<div class="d-flex justify-content-center">
		<h1 class=" h2 mb-5">${cItem.title}</h1>
	</div>

	<!-- Heart icon -->
	<div class="d-flex justify-content-center pb-2"
		style="margin-top: -40px;">
		<button
			class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle"
			type="button" data-bs-toggle="tooltip" title="Add to Wishlist">
			<i class="fi-heart"></i>
		</button>
		<div class="dropdown d-inline-block" data-bs-toggle="tooltip"
			title="Share">
			<button
				class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2"
				type="button" data-bs-toggle="dropdown">
				<i class="fi-share"></i>
			</button>
			<div class="dropdown-menu dropdown-menu-end">
				<button class="dropdown-item" type="button">
					<i class="fi-facebook fs-base opacity-75 me-2"></i>Facebook
				</button>
				<button class="dropdown-item" type="button">
					<i class="fi-twitter fs-base opacity-75 me-2"></i>Twitter
				</button>
				<button class="dropdown-item" type="button">
					<i class="fi-instagram fs-base opacity-75 me-2"></i>Instagram
				</button>
			</div>
		</div>
	</div>

	<!-- slide -->
	<div class="d-flex justify-content-center">
		<div class="tns-carousel-wrapper overflow-hidden d-flex rounded-3"
			style="width: 55em; height: auto;">
			<div class="tns-carousel-inner  "
				data-carousel-options='{"gutter": 16}'>
				<img src="${cItem.firstimage}"	alt="Image">
				<img src="${cItem.firstimage2}"
					alt="Image">
				<!-- <img class="rounded-3" src="https://mono.aks.ac.kr/s/media/7f/7fb47219-31a1-4dd9-bc41-d1a1bea62190.jpg?preset=page" alt="Image">
        <img class="rounded-3" src="https://media-cdn.tripadvisor.com/media/photo-s/15/6a/f8/e8/palace.jpg" alt="Image"> -->

			</div>
		</div>
	</div>


	<div class="row mt-4 pt-3">
		<!-- Post content-->
		<div class="col-lg-8">
			<!-- Post meta-->
			<div class="d-flex flex-wrap border-bottom pb-3 mb-4">
				<a
					class="text-uppercase text-decoration-none border-end pe-3 me-3 mb-2">개요</a>
				<a class="nav-link-muted d-flex align-items-center mb-2"
					href="#comments" data-scroll><i
					class="fi-chat-circle opacity-70 me-2"></i><span>3 comments</span></a>
			</div>
			<p class="fs-lg fw-bold text-dark mb-4">${cItem.overview}</p>

			<!-- Tags + Sharing-->
			<div class="pt-4 pb-5 mb-md-3">
				<div
					class="d-md-flex align-items-center justify-content-between border-top pt-4">
					<div class="d-flex align-items-center me-3 mb-3 mb-md-0">
						<div class="d-none d-sm-block fw-bold text-nowrap mb-2 me-2 pe-1">태그:</div>
						<div class="d-flex flex-wrap">
							<a
								class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2"
								href="#">#서울궁궐</a><a
								class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2"
								href="#">#한국전통</a><a
								class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal mb-2"
								href="#">$서울명소</a>
						</div>
					</div>
					<div class="d-flex align-items-center">
						<div class="fw-bold text-nowrap pe-1 mb-2">공유:</div>
						<div class="d-flex">
							<a
								class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm mb-2 ms-2"
								href="#" data-bs-toggle="tooltip" title="Share with Facebook"><i
								class="fi-facebook"></i></a><a
								class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm mb-2 ms-2"
								href="#" data-bs-toggle="tooltip" title="Share with Twitter"><i
								class="fi-twitter"></i></a><a
								class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm mb-2 ms-2"
								href="#" data-bs-toggle="tooltip" title="Share with LinkedIn"><i
								class="fi-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- Review modal-->
			<div class="modal fade" id="modal-review" tabindex="-1">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div
							class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
							<h3 class="modal-title mt-4 text-center">리뷰 작성하기</h3>
							<button class="btn-close position-absolute top-0 end-0 mt-3 me-3"
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

			<div id="comments">
				<h2 class="h4  ">평점</h2>
				<div class="row  ">
					<div class="card card-light card-body mb-4">
						<div class="row mb-md-5 mb-4">

							<!-- Rating breakdown-->
							<!-- Rating breakdown-->
							<div class="col-sm-8 order-sm-1 order-2 text-dark">
								<div class="d-flex align-items-center mb-2 fs-sm text-dark">
									<div class="text-nowrap text-dark">
										5<i
											class="fi-star mt-n1 ms-1 align-middle opacity-70 text-dark"></i>
									</div>
									<div class="progress w-100 mx-3">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 80%" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<span style="min-width: 48px;">80%</span>
								</div>
								<div class="d-flex align-items-center mb-2 fs-sm">
									<div class="text-nowrap">
										4<i class="fi-star mt-n1 ms-1 align-middle opacity-70"></i>
									</div>
									<div class="progress w-100 mx-3">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 10%" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<span style="min-width: 48px;">10%</span>
								</div>
								<div class="d-flex align-items-center mb-2 fs-sm">
									<div class="text-nowrap">
										3<i class="fi-star mt-n1 ms-1 align-middle opacity-70"></i>
									</div>
									<div class="progress w-100 mx-3">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 0%" aria-valuenow="0" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<span style="min-width: 48px;">0%</span>
								</div>
								<div class="d-flex align-items-center mb-2 fs-sm">
									<div class="text-nowrap">
										2<i class="fi-star mt-n1 ms-1 align-middle opacity-70"></i>
									</div>
									<div class="progress w-100 mx-3">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 0%" aria-valuenow="0" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<span style="min-width: 48px;">0%</span>
								</div>
								<div class="d-flex align-items-center mb-2 fs-sm">
									<div class="text-nowrap">
										1<i class="fi-star mt-n1 ms-1 align-middle opacity-70"></i>
									</div>
									<div class="progress w-100 mx-3">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 10%" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<span style="min-width: 48px;">10%</span>
								</div>
							</div>

							<!-- Score-->
							<div
								class="col-sm-4 order-sm-2 order-1 mb-sm-0 mb-3  text-center">
								<h5 class="display-4 mb-2">4,7</h5>
								<div>
									<span class="star-rating"><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i><i
										class="star-rating-icon fi-star-filled active"></i></span>
								</div>
								<span class="fs-sm text-dark">48 reviews</span>
							</div>
						</div>

					</div>

					<!-- Add review btn + Reviews sort-->
					<div
						class="d-flex flex-sm-row flex-column align-items-sm-center justify-content-between mb-4 pb-4 border-bottom">
						<a class="btn btn-outline-primary rounded-pill mb-sm-0 mb-3"
							href="#modal-review" data-bs-toggle="modal"><i
							class="fi-edit mt-n1 me-1 align-middle"></i>리뷰 작성하기</a>
						<div class="d-flex align-items-center ms-sm-4">
							<label class="d-inline-block me-2 pe-1 text-muted text-nowrap"
								for="reviews-sort"><i
								class="fi-arrows-sort mt-n1 me-1 align-middle opacity-80"></i>Sort
								by:</label> <select class="form-select" id="reviews-sort"
								style="min-width: 180px;">
								<option>인기순</option>
								<option>최신순</option>
								<option>조회순</option>
								<option>리뷰순</option>
							</select>
						</div>
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


							<div class="text-nowrap ">
								<i class="fi-ticket fs-lg opacity-70 me-2"></i> 
								<span class="align-middle">체험 프로그램</span>
							</div>
							<div class="bg-secondary rounded-2">
								<div class="align-middle px-2">-</div>
								<div class="align-middle px-2">-</div>

							</div>

							<div class="d-flex">
								<a
									class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm me-2"
									href="#"><i class="fi-facebook"></i></a><a
									class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm me-2"
									href="#"><i class="fi-twitter"></i></a><a
									class="btn btn-icon btn-light-primary btn-xs rounded-circle shadow-sm me-2"
									href="#"><i class="fi-linkedin"></i></a>
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



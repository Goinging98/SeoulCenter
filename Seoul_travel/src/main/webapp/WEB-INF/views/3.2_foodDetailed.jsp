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
			<li class="breadcrumb-item"><a href="/mvc/main"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="/mvc/foodMain"><strong>맛집</strong></a></li>
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
  						<div>
							<c:if test="${empty item.firstimage}">
								<img class="rounded-3" src="${path}/resources/images/restaurant.jpg" alt="Image" style= "width:100%; height:40rem">
							</c:if>
							<c:if test="${not empty item.firstimage}">
								<img class="rounded-3" src="${item.firstimage}" alt="Image" style= "width:100%; height:40rem">
							</c:if>
						</div>
					</div>
				</div>
				<c:if test="${not empty item.firstimage}">
					<ul class="tns-thumbnails" id="thumbnails">
						<li class="tns-thumbnail">
							<img src="${item.firstimage}" alt="Thumbnail">
						</li>
					</ul>
				</c:if>
				<c:if test="${empty item.firstimage}">
					<ul class="tns-thumbnails" id="thumbnails"></ul>
				</c:if>

				<!-- 리뷰 모달 팝업 -->
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
								<form class="needs-validation" action="${path}/foodReplyWrite" method="post">
					    			<input type="hidden" name="contentid" value="${item.contentid}" />
					    			<input type="hidden" name="writerId" value="${loginMember.id}" />
									<div class="mb-4">
										<label class="form-label" for="replyContent">
											리뷰<span class='text-danger'>*</span>
										</label>
										<textarea name="content" class="form-control" id="replyContent" rows="8"
											placeholder="리뷰를 입력하세요" required></textarea>
									</div>
									<button class="btn btn-primary d-block rounded-pill w-100 mb-4" type="submit">등록</button>
								</form>
							</div>
						</div>
					</div>
				</div>

				<!-- 리뷰칸 -->
				<div class="py-5">
					<h2 class="h3">${item.title} 리뷰</h2>
					<div class="row">
						<!-- 리뷰 작성 버튼 -->
						<c:if test="${loginMember != null}">
							<div class="d-flex flex-sm-row flex-column align-items-sm-center justify-content-between mb-4 pb-4 border-bottom">
								<a class="btn btn-outline-primary rounded-pill mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal">
									<i	class="fi-edit mt-n1 me-1 align-middle"></i>리뷰 작성하기</a>
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
											<span class="text-muted fs-sm"><fmt:formatDate type="both" value="${reply.create_date}"/></span>
										</div>
										<p><c:out value="${reply.content}"/></p>
										<div class="d-flex align-items-center">
										</div>
									</div>
								</c:forEach>
							</c:if>
							<c:if test="${empty replyList}">
								<tr>
									<td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
								</tr>
							</c:if>
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
									<i class="fi-cafe fs-lg opacity-70 me-2 "></i> 
									<span class="align-middle">${item.firstmenu}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-map-pin fs-lg opacity-70 me-2"></i>
									<span class="align-middle">${item.addr1}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-clock fs-lg opacity-70 me-2"></i>
									<span class="align-middle mb-3">${item.opentimefood}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-plane fs-lg opacity-70 me-2"></i>
									<span>${item.restdatefood}</span>
								</div>
								<div class="text-nowrap">
									<i class="fi-phone fs-lg opacity-70 me-2"></i> 
									<span>${item.infocenterfood}</span>
								</div>
							</div>
						</div>
						<span class="placeholder col-12 placeholder-xs"></span>
						<div class="bg-secondary rounded-2 mt-4">
							<div class="d-flex align-items-center mx-2 ">
								<br/>${item.overview}<br/>
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
							<p>
								<i class="fi-map-pin fs-lg opacity-70 me-2"></i> ${item.addr1}
							</p>
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

<script type="text/javascript">

	function deleteReply(replyNo, boardNo){
		var url = "${path}/foodReplyDel?rno=";
		var requestURL = url + replyNo +"&bno=" + boardNo;
		location.replace(requestURL);
	}

	
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<div class="col-12 my-5"></div>
<div class="col-12 my-5"></div>

<!-- Page container-->
<div class="container  mt-0 pt-4">
	<!-- Breadcrumb-->
	<nav class="pt-md-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="1_main_page.html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="2_hotplace.html"><strong>핫플레이스</strong></a></li>
			<li class="breadcrumb-item"><a href="2.1_hotplace.html"><strong>핫플레이스
						상세</strong></a></li>
			<li class="breadcrumb-item"><a
				href="2.1_hotplaceTouristSpot.html"><strong>관광지</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>핫플레이스
					관광지 상세</strong></li>
		</ol>
	</nav>

	<!-- Page content-->

	<div class="d-flex justify-content-center">
		<h1 class=" h5 pt-5" style="color: #55AC9B;">고궁</h1>
	</div>

	<div class="d-flex justify-content-center">
		<h1 class=" h2 mb-5">경복궁</h1>
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
			style="width: 65em; height: auto;">
			<div class="tns-carousel-inner  "
				data-carousel-options='{"gutter": 16}'>
				<img
					src="https://i0.wp.com/www.agoda.com/wp-content/uploads/2019/05/Gyeongbokgung-palace-Seoul-Throne-Hall.jpg"
					alt="Image"> <img
					src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=31638&fileTy=MEDIA&fileNo=1"
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
			<p class="fs-lg fw-bold text-dark mb-4">경복궁은 조선 시대에 지어진 왕궁 중 가장 큰
				궁궐이었다. 조선 왕조 개국 3년인 1395년에 완공된 궁궐은 390여 칸으로 한양의 중심축에 자리했다. 개국공신 정도전은
				태조로부터 첫 번째 궁궐의 이름을 지으라는 명을 받았고, 고심 끝에 '새 왕조가 큰 복을 누려 번영할 것'이라는 의미로
				경복궁(景福宮)이라는 이름을 붙였다. 경복궁은 5대궁인 경희궁, 덕수궁, 창경궁, 창덕궁 중 가장 큰 궁궐로 조선 왕조의
				주요 궁궐 역할을 했다.</p>


			<blockquote class="blockquote mb-4">
				<!-- <p>Consequat posuere egestas elit nunc eget elementum sed proin eget. Eget at elementum vestibulum ut eget. Etiam cursus magnis diam id dignissim sit nulla sit. Arcu eu enim nunc rutrum. Auctor venenatis aliquam quam sit.</p>
              <footer class="blockquote-footer"> Annette Black</footer> -->
			</blockquote>
			<p>국보 제223호인 근정전(勤政殿)은 경복궁의 법전으로 각종 즉위식을 거행했던 왕실의 행사장이었다. 근정전의 옆에
				위치한 경회루는 1만원권 구화폐 실릴 만큼 대표적인 건축물로 사랑받아 왔다. 한국은 미래 세대를 위해 궁궐의 재건, 복원,
				유지를 위해 많은 시간과 노력을 투자해 왔다. 이외에도 일제강점기에 훼손을 겪었다가 2010년에 완전히 복원된 광화문,
				고종과 명성황후가 머물던 건천궁, 경복궁의 후원인 향원정 등이 자리하고 있다. 경복궁을 방문할 때 국립 고궁 박물관과 국립
				민속 박물관 또한 함께 방문하기 좋다.</p>
			<p>경복궁은 조선 왕조 최고의 궁궐인 만큼 생각보다 넓다. 동선은 자유롭게 조정할 수 있다. 다만 좀 더 자세한
				관람을 원한다면 우리궁궐지킴이 해설사들의 설명과 함께하는 것이 가장 좋다.</p>
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

							<h3 class="h5 mb-2">가이드</h3>

							<div class="text-nowrap">
								<i class="fi-map-pin fs-lg opacity-70 me-2"></i> <span
									class="align-middle">경기 고양시 일산동구 무궁화로 118</span>
							</div>
							<div class="ps-3 ">
								<t class="fs-sm text-muted">우편번호 : 30195</t>
							</div>

							<div class="text-nowrap ">
								<i class="fi-ticket fs-lg opacity-70 me-2"></i> <span
									class="align-middle">체험 프로그램</span>
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

					<!-- Location (Map)-->
					<div>
						<div class="position-relative mb-2">
							<img class="rounded-3" src="img/real-estate/single/map.jpg"
								alt="Map">
							<div
								class="d-flex w-100 h-100 align-items-center justify-content-center position-absolute top-0 start-0">
								<a class="btn btn-primary stretched-link"
									href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6145424811048!2d-73.93999278406218!3d40.74850644331743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2592979d4827f%3A0x3a5d8b3cf779f3b6!2s28%20Jackson%20Ave%2C%20Long%20Island%20City%2C%20NY%2011101%2C%20USA!5e0!3m2!1sen!2sua!4v1618074552281!5m2!1sen!2sua"
									data-iframe="true" data-bs-toggle="lightbox"><i
									class="fi-route me-2"></i>위치 보기</a>
							</div>
						</div>
						<p class="mb-0 fs-sm text-center">28 Jackson Ave Long Island
							City, NY 67234</p>
					</div>

				</div>
			</div>
		</aside>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

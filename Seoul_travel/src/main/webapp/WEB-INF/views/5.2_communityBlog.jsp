<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 사진 띠 부분-->
<section class="bg-dark-overlay-4"
	style="background-image: url( 'img/community/d94ed70d0a33341d.jpg' ); background-position: center left; background-size: cover; margin-top: 120px;">
	<div class="container ">
		<div class="row ">
			<div class="col-lg-8 py-xxl-5 my-lg-4 ">
				<a href="#" class="badge text-bg-primary mb-2"><i
					class="fas fa-circle me-2 small fw-bold"></i></a>
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
			<li class="breadcrumb-item"><a href="1_main_page.html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="5_community.html"><strong>커뮤니티</strong></a></li>
			<li class="breadcrumb-item"><a
				href="5.1_communityAccommodation.html"><strong>맛집</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>파씽씽식당</strong></li>
		</ol>
	</nav>
	<!-- 사진 -->
	<h1 class="h2 pb-3" style="text-align: center; margin-top: 100px;">(내돈내산)베리와
		함께하는 서울 나가하마만게츠 후기</h1>
	<div style="text-align: center;">
		<img class="rounded-3" src="img\city-guide\community\restaurant2.jpeg"
			alt="Post image" width="800" height="150">
	</div>

	<div class="row mt-4 pt-3">

		<!-- Sidebar (offcanvas)-->
		<aside class="col-lg-4">
			<!-- Offcanvas-->
			<div class="offcanvas offcanvas-start offcanvas-collapse pe-lg-1"
				id="blog-sidebar">
				<div class="offcanvas-header shadow-sm mb-2">
					<h3 class="h5 offcanvas-title">Sidebar</h3>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text"
							placeholder="검색어를 입력해주세요."><i
							class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					<!-- Author-->
					<div class="card card-flush py-2 py-lg-0 mb-4">
						<div class="card-body d-flex align-items-start">
							<img class="me-3 rounded-circle" src="img/avatars/28.png"
								width="80" alt="Avatar">
							<div>
								<h4 class="h5 mb-2">
									<a class="nav-link stretched-link p-0 fw-bold" href="#">자고싶은
										코딩맨</a>
								</h4>
								<span class="d-block mb-3 fs-sm">정회원</span>
								<div class="position-relative zindex-5 text-nowrap">
									<a
										class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2"
										href="#"><i class="fi-facebook"></i></a><a
										class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2"
										href="#"><i class="fi-twitter"></i></a><a
										class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2"
										href="#"><i class="fi-instagram"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!-- Categories-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h3 class="h5">커뮤니티</h3>
							<a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.2_communityBlog.html">공지사항<span
								class="text-muted ms-394">(2)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.2_communityBlog.html">핫플레이스<span
								class="text-muted ms-300">(4)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.2_communityBlog.html">맛집<span
								class="text-muted ms-300">(5)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.2_communityBlog.html">숙소<span
								class="text-muted ms-2">(1)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.2_communityBlog.html">Q & A 게시판<span
								class="text-muted ms-2">(8)</span></a>
						</div>
					</div>
					<!-- Tags-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h4 class="h5">여행 태그</h4>
							<div class="d-flex flex-wrap mb-n1">
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">핫플콕콕</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">가볼래
									터~?</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">여기어때?</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이집
									맛집</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">이번주
									핫플</button>
								<button
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2">SNS
									핫플!!</button>
							</div>
						</div>
					</div>
					<!-- Subscribe-->
					<div class="card card-flush mb-4"></div>
				</div>
			</div>
		</aside>
		<!-- Post content-->
		<div class="col-lg-8">
			<!-- Post meta-->
			<div class="d-flex flex-wrap border-bottom pb-3 mb-4">
				<a
					class="text-uppercase text-decoration-none border-end pe-3 me-3 mb-2"
					href="#">맛집</a>
				<div class="d-flex align-items-center border-end pe-3 me-3 mb-2">
					<i class="fi-calendar-alt opacity-70 me-2"></i><span>2023.05.23</span>
				</div>
				<div class="d-flex align-items-center border-end pe-3 me-3 mb-2">
					<i class="fi-clock opacity-70 me-2"></i><span>8분</span>
				</div>
				<a class="nav-link-muted d-flex align-items-center mb-2" href="#"><i
					class="fi-chat-circle opacity-70 me-2"></i><span>댓글 3개</span></a>
			</div>
			<p class="fs-lg fw-bold text-dark mb-4">안녕하세요! 저번주 해운대에 다녀와서 써보는
				라멘 맛집 후기입니다!!!</p>
			<p>사실 여기는 줄이 너무 길어서 테이블링서비스를 미리 하는게 좋은데요 직접가서 여기 기계에 예약하니 2시간정도
				소요되었습니다 그래서 2시쯤 예약해서 4시에 먹었어요ㅜ 테이블링 이라는 앱이있는데 꼭 그걸로 가시기 두시간 전 미리 예약해
				두세요!!! 생각보다 먹고 빠지는 속도가 많이 느립니다ㅜㅜ</p>
			<p>그래서 예약해두고 저는 해리단길을 구경하면서 여기저기 시간을 보냈습니다 ㅋㅋㅋㅋ 그리고 한 세명쯤 남았을때
				이동해서 앞에서 기다리다 들어갔어요 내부는 이렇습니다. 직원분들이 일본사람처럼 저렇게 이마에 띠를 두르고 계셨습니다
				ㅋㅋㅋㅋ 들어가자 마자 먼저 주문부터 했는데요 저희는 나가하마라멘 단품 둘 라멘교자세트하나 이렇게 주문했습니다 ㅋㅋㅋㅋ
				술좋아하는 이강님은 생맥도 추가로 주문했어요ㅋㅋㅋㅋ 그리고 직원분이 오셔서 짐이 무거우면 여기 보관하라고 보관대에
				옮겨주셨습니다 ㅋㅋㅋㅋㅋㅋ</p>
			희희 친절하셔서 넘 조아 안할수가 없는 비주얼,,, 면도 적당하니 진짜 오랫만에 이런 맛집입니다 포항에는 전문적으로 하는
			집이래도 가보면 그냥 그런데가 종종 있는데 여기는 진짜 육수만 36시간끓였다는거 보니 지대네요 [
			<p></p>
			<blockquote class="blockquote pb-2">
				<p>그리고 후식으로 나오는 크림치즈인데 이거 진짜 개 미쳤습니다 왜 이걸 따로 파는지 알겠더라구요 쫀득하고
					입에들어가면 사르르 부드러운데 달콤하고 이거 머 말로 표현이 안돼요 23000원에 세트로 구매할수 있더라구요 이거 쓰면서
					또 먹고 싶어지네요,,</p>
				<footer class="fs-base">— 자고싶은 코딩맨</footer>
				<!--</blockquote> -->

				<!-- Tags + Sharing-->
				<div class="pt-4">
					<div
						class="d-md-flex align-items-center justify-content-between border-top pt-4">
						<div class="d-flex align-items-center me-3 mb-3 mb-md-0">
							<div class="d-none d-sm-block fw-bold text-nowrap mb-2 me-2 pe-1">Tags:</div>
							<div class="d-flex flex-wrap">
								<a
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal me-2 mb-2"
									href="#">일식</a><a
									class="btn btn-xs btn-outline-secondary rounded-pill fs-sm fw-normal mb-2"
									href="#">서울여행</a>
							</div>
						</div>
						<div class="d-flex align-items-center">
							<div class="fw-bold text-nowrap pe-1 mb-2">Share:</div>
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
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

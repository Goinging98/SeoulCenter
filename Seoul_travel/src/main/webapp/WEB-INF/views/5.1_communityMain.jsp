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
			<li class="breadcrumb-item active" aria-current="page"><strong>숙소</strong></li>

		</ol>
	</nav>
	<!-- Sponsored posts-->
</div>
</header>

<div class="container mb-md-4 py-2" style="margin-top: 60px;">

	<!-- List of posts + Sidebar-->
	<div class="row">
		<!-- Sidebar (offcanvas)-->
		<aside class="col-lg-3">
			<div class="offcanvas offcanvas-start offcanvas-collapse"
				id="blog-sidebar">

				<div class="offcanvas-header shadow-sm mb-2">
					<h2 class="h5 offcanvas-title">Sidebar</h2>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>
				<div class="offcanvas-body">
					<!-- Sorting-->
					<div class="d-flex align-items-center mb-4">
						<label class="d-inline-block me-2 pe-1 text-muted text-nowrap"
							for="sort"><i
							class="fi-arrows-sort mt-n1 me-1 align-middle opacity-80"></i> 정렬
							: </label> <select class="form-select" id="sort">
							<option>인기순</option>
							<option>최신순</option>
							<option>조회순</option>
							<option>댓글순</option>
						</select>
					</div>
					<!-- Search-->
					<div class="position-relative mb-4">
						<input class="form-control pe-5" type="text"
							placeholder="검색어를 입력해주세요."><i
							class="fi-search position-absolute top-50 end-0 translate-middle-y me-3"></i>
					</div>
					<!-- Categories-->
					<div class="card card-flush pb-2 pb-lg-0 mb-4">
						<div class="card-body">
							<h3 class="h5">커뮤니티</h3>
							<a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.1_communityAccommodation.html">공지사항<span
								class="text-muted ms-394">(2)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.1_communityAccommodation.html">핫플레이스<span
								class="text-muted ms-300">(4)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.1_communityAccommodation.html">맛집<span
								class="text-muted ms-300">(5)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.1_communityAccommodation.html">숙소<span
								class="text-muted ms-2">(1)</span></a><a
								class="nav-link fw-normal d-flex justify-content-between py-1 px-0"
								href="5.3_Q&A.html">Q & A 게시판<span class="text-muted ms-2">(8)</span></a>
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
		<!-- Articles list-->
		<div class="col-lg-9">
			<div class="ps-lg-3">
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/01.jpg);"><span
						class="badge bg-info position-absolute top-0 end-0 m-3 fs-sm">New</span></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Travelling</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">서울여행 후기72편
								- 용산 삼각지역 맥주집 추천: 용리단길 및 부라보 선술집</a>
						</h3>
						<p class="fs-sm text-muted">처음 1차를 용산역 남쪽 한참 끝부분에서 먹었다. 외국인이
							많다해서 서울 용산쪽으로 왔는데 술집도 힙한곳을 가고싶어 검색을 했더니 삼각지역 근처로 나오는거다. 이 근처 힙한
							술집, 식당들은 죄다 여기있는거임!!.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/25.png" width="38"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">계장쟁이 면봉</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.05.24</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>3
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/07.jpg);"></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Inspiration</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">10
								World-Class Museums You Can Visit Online</a>
						</h3>
						<p class="fs-sm text-muted">Nunc vivamus nam vitae ut faucibus
							metus pretium nisl. Elementum sed tincidunt nec aliquam tempus.
							Neque pharetra vitae, mauris malesuada. Porttitor consequat,
							sollicitudin vivamus pharetra nibh faucibus neque, viverra.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/24.png" width="48"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">최길동</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>May
										17</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>4
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/08.jpg);"></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Entertainment</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">7 Tips for
								Solo Travelers in Africa</a>
						</h3>
						<p class="fs-sm text-muted">Phasellus cursus orci pulvinar
							proin nulla vitae. Arcu faucibus vestibulum fames eget nunc. Ut
							in sed platea egestas amet purus nibh suspendisse semper. Iaculis
							sit quam magna congue. Amet vel non aliquet habitasse.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/26.png" width="48"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">Ralph Edwards</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>May
										10</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>2
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/09.jpg);"></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Accomodation</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">How to
								Spend a Few Days Visiting Coast</a>
						</h3>
						<p class="fs-sm text-muted">Mi sit montes, aenean tempor
							sollicitudin volutpat viverra. Tellus amet, vitae ac consectetur
							blandit at. Odio proin elit, vehicula morbi faucibus vestibulum.
							Praesent sed pulvinar posuere nisl tincidunt. Iaculis sit quam
							magna congue.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/23.png" width="48"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">Kristin Watson</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>Apr
										30</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>No
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/10.jpg);"></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Inspiration</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">US Museum
								Industry 2021–2024</a>
						</h3>
						<p class="fs-sm text-muted">Nunc vivamus nam vitae ut faucibus
							metus pretium nisl. Elementum sed tincidunt nec aliquam tempus.
							Neque pharetra vitae, mauris malesuadafelis donec eu sit nisi.
							Accumsan mauris eget convallis mattis sed etiam scelerisque.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/27.png" width="48"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">Guy Hawkins</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>Apr
										19</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>2
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
				<!-- Article-->
				<article class="card card-horizontal border-0 mb-4">
					<a
						class="card-img-top position-relative rounded-3 me-sm-4 mb-sm-0 mb-3"
						href="5.2_communityBlog.html"
						style="background-image: url(img/city-guide/blog/11.jpg);"></a>
					<div class="card-body px-0 pt-0 pb-lg-5 pb-sm-4 pb-2">
						<a class="fs-sm text-uppercase text-decoration-none" href="#">Lifestyle</a>
						<h3 class="h5 pt-1 mb-2">
							<a class="nav-link" href="5.2_communityBlog.html">Rocky
								Mountains Ski Resorts News &amp; Events</a>
						</h3>
						<p class="fs-sm text-muted">Phasellus cursus orci pulvinar
							proin nulla vitae. Arcu faucibus vestibulum fames eget nunc. Ut
							in sed platea egestas amet purus nibh suspendisse semper.
							Praesent sed pulvinar posuere nisl tincidunt. Praesent amet sed
							lacus vitae.</p>
						<a class="d-flex align-items-center text-decoration-none" href="#"><img
							class="rounded-circle" src="img/avatars/26.png" width="48"
							alt="Avatar">
							<div class="ps-2">
								<h6 class="fs-sm text-nav lh-base mb-1">Ralph Edwards</h6>
								<div class="d-flex text-body fs-xs">
									<span class="me-2 pe-1"><i
										class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>Apr
										06</span><span><i
										class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>5
										comments</span>
								</div>
							</div> </a>
					</div>
				</article>
			</div>
			<!-- Pagination-->
			<div class="d-flex justify-content-end pt-4 border-top">
				<nav aria-label="Blog pagination">
					<ul class="pagination mb-0">
						<li class="page-item d-sm-none"><span
							class="page-link page-link-static">1 / 8</span></li>
						<li class="page-item active d-none d-sm-block" aria-current="page"><span
							class="page-link">1<span class="visually-hidden">(current)</span></span></li>
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="5.1_communityAccommodation.html">2</a></li>
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="5.1_communityAccommodation.html">3</a></li>
						<li class="page-item d-none d-sm-block">...</li>
						<li class="page-item d-none d-sm-block"><a class="page-link"
							href="5.1_communityAccommodation.html">8</a></li>
						<li class="page-item"><a class="page-link"
							href="5.1_communityAccommodation.html" aria-label="Next"><i
								class="fi-chevron-right"></i></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

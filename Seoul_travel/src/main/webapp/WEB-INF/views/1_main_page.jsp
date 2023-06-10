<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
	.video-container {
		position: relative;
		top: -100px; /* 비디오를 위로 130px 이동시키려면 값을 조정하세요 */
		display: flex;
		justify-content: center;
		overflow: hidden;
		max-width: 100%;
		max-height: 115%;
	}
	
	.video-container video {
		width: 100%;
		height: auto;
		object-fit: cover;
	}
</style>

<section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5" style="margin-top: 100px;">
	<span class="img-overlay bg-transparent "
		style="background-image: linear-gradient(0deg, rgba(255, 255, 255, 0), rgba(31, 27, 45, 0));"></span>
	<div class="jarallax-img">
		<div class="video-container">
			<video autoplay loop muted>
				<source src="${path}/resources/img/city-guide/home/Untitled video - Made with Clipchamp.mp4" type="video/mp4">
			</video>
		</div>
	</div>
	<div class="content-overlay container py-md-5" style="height: 400px;">
		<div class="mt-5 mb-md-5 py-5">
			<h1 class="display-5 mb-4 me-lg-n5 text-lg-start text-center mb-4" style="color: white; margin-left: 28px;">
				고민하지말고 <span style="color: #25af9b;">서울상담소</span>
			</h1>
			<h4	class="text-lg-start text-center mb-4 mb-lg-5 fs-lg" style="color: rgb(255, 255, 255); margin-left: 28px;"> 
					<br>잠들지 않는 도시, 서울에 당신을 초대합니다.
			</h4>
			<div class="col-xl-7 col-lg-9 col-md-10 mx-1 px-lg-1"></div>
		</div>
	</div>
	<div class="position-absolute d-none d-xxl-block bottom-0 start-0 w-100 bg-white zindex-1"
		style="border-top-left-radius: 30px; border-top-right-radius: 30px; height: 30px;">
	</div>
</section>



<!-- 오늘 숙소 여기 어때요?-->
<section class="container mb-sm-5 mb-4 pb-lg-4" style="margin-top: 30px">
	<div
		class="d-sm-flex align-items-center justify-content-between mb-4 pb-2">
		<h2 class="h4" style="margin-bottom: -25px;">서울과 함께 지내요</h2>
		<a class="btn btn-link fw-normal ms-sm-3 p-0" href="${path}/accomMain">
			더보기<i class="fi-arrow-long-right ms-2"></i>
		</a>
	</div>
	<div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside">
		<div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 4, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:4,&quot;nav&quot;:false}}}">
			<!-- Item-->
			<c:forEach var="item" items="${randomAccommodations}">
				<div>
					<div class="position-relative">
						<div class="position-relative mb-3">
							<img class="rounded-3" src="${item.firstimage}" alt="Image" style="width: 20rem; height: 12rem;">
						</div>
						<h3 class="mb-2 fs-lg">
							<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">${item.title}</a>
						</h3>
						<ul class="list-inline mb-0 fs-xs">
							<li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${item.addr1}</li>
						</ul>
					</div>
				</div>
			</c:forEach>
			
		</div>
	</div>
</section>

<!-- Posts with sidebar right-->
<section class="container mt-6">
	<div class="row row-cols-auto">
		<!-- Content-->
		<div class="col-lg-9  col-sm-offset-11   col-md-offset-6">
			<div class="h4 widget-title pb-1" style="margin-bottom: 10px;">서울상담소의 추천 플레이스</div>
			<!-- 커뮤니티 글 보여주기 -->
			<article class="card card-horizontal card-hover mb-grid-gutter">
				<a href="2.2_hotplaceDetailed .html" class="card-img-top" style="background-image: url(${path}/resources/img/boardpic/8.jpg);"></a>
				<div class="card-body">
					<span class="d-inline-block mb-2 pb-1 fs-sm"><strong>핫플레이스</strong>
					</span>
					<h2 class="h4 nav-heading text-capitalize mb-3">
						<a href="/mvc/board/view?no=42" style="text-decoration: none;">
							<p>더현대 서울 핫플 영탁 팝업스토어 탁스 스튜디오 후기 :: 아니굿즈 왜 이렇게 이뻐!</p>
						</a>
					</h2>
					<p class="mb-0 fs-sm text-muted">
						안녕하세요 신이나는 여행중인 여행가 이나에요. 어제 더 현대 서울을 다녀오고 나서 들렀던 팝업스토어 후기들을 정리해서 올리고 있는데요 
						아니 왜인지 탁스 스튜디오 사진이 가장 많더라구요 ㅎ 사실 굿즈가 너무 이쁘긴했어요 그래서 오늘은 순전히 호기심에 들어갔지만 생각외로 
						즐기고 나왔던 영탁 팝업스토어 탁스 스튜디오 후기를 남겨볼게요! ...
					</p>
					<div class="mt-3 text-end fs-xs">
						<a href="/mvc/board/view?no=42" style="text-decoration: none;">더보기</a></div>
				</div>
			</article>

			<!-- Pagination-->
			<div class="d-md-flex justify-content-between align-items-center pt-3 pb-sm-2">
				<div class="d-flex justify-content-center align-items-center mb-4"></div>
				<nav class="mb-4" aria-label="Page navigation"><ul class="pagination justify-content-center"></ul></nav>
			</div>
		</div>
		
		<!-- Sidebar-->
		<aside class="col-lg-3 col-sm-3 mt-0 d-none d-lg-block d-xl-block">
			<div class="offcanvas offcanvas-collapse d-none d-lg-block d-xl-block">
				<div class="offcanvas-header"></div>
				<div class="offcanvas-body px-4 pt-3 pt-lg-0 pe-lg-0 ps-lg-2 ps-xl-4" data-simplebar></div>
				<!-- Featured posts-->
				<div class="widget mt-n1 mb-5 remove-left-margin">
					<h3 class="widget-title pb-1">오늘의 맛집</h3>
					<div class="widget mt-n1 mb-5" style="border: 1px solid #e8e8e8; padding: 4px; border-radius: 12px;">
						<c:forEach var="food" items="${foodList}">
							<div class="d-flex align-items-start mb-3 mt-3" style="margin-left: 3%;">
								<a class="d-block flex-shrink-0" href="${path}/foodDetail?id=${food.contentid}">
									<img class="rounded" style= "width: 5rem; height: 4rem;" src="${food.firstimage}" alt="Post" width="34">
								</a>
								<div class="ps-2 ms-1">
									<h5 class="fs-md nav-heading mb-1">
										<a class="fw-medium" href="${path}/foodDetail?id=${food.contentid}" style="text-decoration: none;">${food.title}</a>
									</h5>
									<p class="fs-xs text-muted mb-0">${food.addr1}</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</aside>
	</div>
</section>

<!-- Videos-->
<div class="container-fluid" style="min-height: 425px; margin-bottom: 80px; margin-top: 30px; background-color: #70bfac;">
	<h2 class="display-5 fw-bold text-center" style="margin-top: 50px;"></h2>
	<div class="col-lg-6 mx-auto text-center">
		<p class="lead mb-4"></p>
	</div>

	<div class="container" style="margin-top: 20px;">
		<div class="row justify-content-center">
			<div class="col-lg-5 text-center">
				<div class="youtube-thumbnail" style="height: 330px;">
					<iframe src="https://www.youtube.com/embed/nmY3X5dE9HQ" frameborder="0" style="height: 100%;"></iframe>
				</div>
			</div>
			<div class="col-lg-1 text-center"></div>
			<div class="col-lg-5 text-center">
				<div class="youtube-thumbnail d-none d-lg-block d-xl-block" style="height: 330px;">
					<iframe src="https://www.youtube.com/embed/dZhcTWWMytI" frameborder="0" style="height: 100%;"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- 오늘은 여기 어때요? -->
<section class="container mb-sm-2 mb-4 pb-lg-4">
	<div
		class="d-sm-flex align-items-center justify-content-between mb-4 pb-2">
		<h2 class="h4" style="margin-bottom: -25px;">서울상담소의 추천 관광지</h2>
		<a class="btn btn-link fw-normal ms-sm-3 p-0"
			href="${path}/hotTourList">더보기<i class="fi-arrow-long-right ms-2"></i>
		</a>
	</div>
	<div class="card-body">
		<div class="tab-content">
			<div class="tab-pane fade show active" id="result5" role="tabpanel">
				<div class="px-5">
					<div class="tns-carousel-wrapper tns-controls-outside tns-nav-outside">
						<div class="tns-carousel-inner"
							data-carousel-options="{&quot;items&quot;: 5, &quot;responsive&quot;: 
                            {&quot;0&quot;:{&quot;items&quot;:2},
                            &quot;480&quot;:{&quot;items&quot;:3, &quot;gutter&quot;: 16},
                            &quot;680&quot;:{&quot;items&quot;:4, &quot;gutter&quot;: 16},
                            &quot;850&quot;:{&quot;items&quot;:5, &quot;gutter&quot;: 16}}}">
							<c:forEach var="tItem" items="${tList}">
								<a class="swap-image" href="${path}/hotTourListDetail?id=${tItem.contentid}">
								<img src="${tItem.firstimage}" class="rounded-2 img-fluid gallery-item" alt="Image1" style= "min-width:13em; min-height:13em; max-width:13em; max-height:13em;"></a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="html5" role="tabpanel">
				<pre class="line-numbers">
					<code class="lang-html"></code>
				</pre>
			</div>
			<div class="tab-pane fade" id="pug5" role="tabpanel">
				<pre class="line-numbers">
					<code class="lang-pug"> </code>
                </pre>
			</div>
		</div>
	</div>
</section>




<!-- Blog: Latest posts-->
<section class="container my-2 py-lg-4">
	<div class="d-sm-flex align-items-center justify-content-between mb-4 pb-2">
		<h2 class="h3 mb-sm-0">서울 :: 후기로 추천해요</h2>
		<a class="btn btn-link fw-normal ms-sm-3 p-0" href="community/food">커뮤니티<i class="fi-arrow-long-right ms-2"></i>
		</a>
	</div>
	<!-- Carousel-->
	<div class="tns-carousel-wrapper tns-nav-outside mb-md-2">
		<div class="tns-carousel-inner d-block" data-carousel-options="{&quot;controls&quot;: false, &quot;gutter&quot;: 24, &quot;autoHeight&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1200&quot;:{&quot;items&quot;:3}}}">
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="/mvc/board/view?no=35">
					<img class="rounded-3" src="${path}/resources/img/boardpic/2.png" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="/mvc/community/food">맛집</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="/mvc/board/view?no=35">[홍대맛집/연남동맛집] 미쁘동 -토마토 연어국수JMT 내돈내산 솔직후기</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href=""><img
					class="rounded-circle" src="${path}/resources/img/avatars/16.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">박길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.06.11</span>
						</div>
					</div>
				</a>
			</article>
			
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="/mvc/board/view?no=43">
					<img class="rounded-3" src="${path}/resources/img/boardpic/13.jpg" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="/mvc/community/hotplace">핫플레이스</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="/mvc/board/view?no=43">[서울 가볼만한 곳]어느 수집가의 초대 국립중앙 박물관 전시</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href="#"><img
					class="rounded-circle" src="${path}/resources/img/avatars/18.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">최길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.06.11</span>
						</div>
					</div></a>
			</article>
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="/mvc/board/view?no=46"><img
					class="rounded-3" src="${path}/resources/img/boardpic/12.jpg" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="/mvc/community/accomodation">숙박</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="/mvc/board/view?no=46">시그니엘 서울 호텔 한강뷰 후기</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href="#"><img
					class="rounded-circle" src="${path}/resources/img/avatars/17.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">김길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.06.11</span>
						</div>
					</div></a>
			</article>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />





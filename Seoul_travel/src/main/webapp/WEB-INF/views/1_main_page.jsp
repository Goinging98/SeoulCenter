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
				<source
					src="${path}/resources/img/city-guide/home/Untitled video - Made with Clipchamp.mp4"
					type="video/mp4">
			</video>
		</div>
	</div>
	<div class="content-overlay container py-md-5" style="height: 400px;">
		<div class="mt-5 mb-md-5 py-5">
			<h1 class="display-5 mb-4 me-lg-n5 text-lg-start text-center mb-4"
				style="color: white; margin-left: 28px;">
				고민하지말고 <span style="color: #25af9b;">서울상담소</span> <span> <h8
						class="text-lg-start text-center mb-4 mb-lg-5 fs-lg"
						style="color: rgb(255, 255, 255); margin-left: 28px;"> <br>
					잠들지 않는 도시, 서울에 당신을 초대합니다.</h8>
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
		<a class="btn btn-link fw-normal ms-sm-3 p-0"
			href="4_accommodation.html">더보기<i
			class="fi-arrow-long-right ms-2"></i></a>
	</div>
	<div
		class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside">
		<div class="tns-carousel-inner"
			data-carousel-options="{&quot;items&quot;: 4, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:4,&quot;nav&quot;:false}}}">
			<!-- Item-->
			<div>
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Add to Favorites">
							<i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="${path}/resources/img/city-guide/catalog/01.jpg"
							alt="Image" width="300px" height="250px">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Berlin
							Business Hotel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
							class="text-muted">&nbsp;(48)</span></li>
						<li class="list-inline-item pe-1">
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div>
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Add to Favorites">
							<i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="${path}/resources/img/city-guide/catalog/02.jpg"
							alt="Image" width="300px" height="250px">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Big
							Tree Cottage</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span
							class="text-muted">&nbsp;(24)</span></li>
						<li class="list-inline-item pe-1">
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div>
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
							width=50px type="button" data-bs-toggle="tooltip"
							data-bs-placement="left" title="Add to Favorites">
							<i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="${path}/resources/img/city-guide/catalog/03.jpg"
							alt="Image" width="300px" height="250px">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.2_accmmoGallery.html">Grand
							Resort &amp; Spa</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span
							class="text-muted">&nbsp;(43)</span></li>
						<li class="list-inline-item pe-1">
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div>
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Add to Favorites">
							<i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="${path}/resources/img/city-guide/catalog/04.jpg"
							alt="Image" width="300px" height="250px">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Merry
							Berry Motel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
							class="text-muted">&nbsp;(13)</span></li>
						<li class="list-inline-item pe-1">
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div>
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-5.5 m-2 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Add to Favorites">
							<i class="fi-heart"></i>
						</button>
						<img class="rounded-3" src="${path}/resources/img/city-guide/catalog/04.jpg"
							alt="Image" width="300px" height="250px">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Merry
							Berry Motel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
							class="text-muted">&nbsp;(13)</span></li>
						<li class="list-inline-item pe-1">
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>강남구</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Posts with sidebar right-->
<section class="container mt-6">
	<div class="row row-cols-auto">
		<!-- Content-->
		<div class="col-lg-9  col-sm-offset-11   col-md-offset-6">
			<div class="h4 widget-title pb-1" style="margin-bottom: 10px;">서울
				상담소의 추천 플레이스</div>
			<!-- Post-->
			<article class="card card-horizontal card-hover mb-grid-gutter">
				<a href="2.2_hotplaceDetailed .html" class="card-img-top"
					style="background-image: url(img/city-guide/home/deoksugung.jpeg);"><span
					class="badge badge-lg badge-floating text-white"
					style="background-color: #f74f78;">BEST</span></a>
				<div class="card-body">
					<span class="d-inline-block mb-2 pb-1 fs-sm"> <i
						class="ai-clock fs-base me-2 mt-n1"></i> <strong>일주일 전
							베스트글</strong>
					</span>
					<h2 class="h4 nav-heading text-capitalize mb-3">
						<a href="2.2_hotplaceDetailed .html"
							style="text-decoration: none;">"뻔한 고궁 투어 싫어요"
							<p>미처 몰랐던 덕수궁 관람 팁</p>
						</a>
					</h2>
					<p class="mb-0 fs-sm text-muted">덕수궁 대한문 앞, 왕궁수문장 교대의식 궁으로 입장하기
						전, ‘왕궁수문장 교대의식’을 관람하자. 왕궁수문장 교대의식은 조선시대 궁성문 개폐의식, 궁성 수위의식, 행순 등의
						자료를 바탕으로 명칭을 정한 것으로...</p>
					<div class="mt-3 text-end fs-xs">2023.05.03</div>
				</div>
			</article>

			<!-- Pagination-->
			<div
				class="d-md-flex justify-content-between align-items-center pt-3 pb-sm-2">
				<div class="d-flex justify-content-center align-items-center mb-4">
					<label class="pe-1 me-2 mt-n1 fs-sm"> </select>
				</div>
				<nav class="mb-4" aria-label="Page navigation">
					<ul class="pagination justify-content-center">
					</ul>
				</nav>
			</div>
		</div>
		<!-- Sidebar-->
		<aside class="col-lg-3 col-sm-3 mt-0 d-none d-lg-block d-xl-block">
			<div
				class="offcanvas offcanvas-collapse d-none d-lg-block d-xl-block">
				<div class="offcanvas-header"></div>
				<div
					class="offcanvas-body px-4 pt-3 pt-lg-0 pe-lg-0 ps-lg-2 ps-xl-4"
					data-simplebar></div>
				<!-- Featured posts-->
				<div class="widget mt-n1 mb-5 remove-left-margin">
					<h3 class="widget-title pb-1">오늘의 맛집</h3>
					<div class="widget mt-n1 mb-5"
						style="border: 1px solid #e8e8e8; padding: 4px; border-radius: 12px;">
						<div class="d-flex align-items-start mb-3 mt-3"
							style="margin-left: 3%;">
							<a class="d-block flex-shrink-0" href="3.2_foodDetailed.html"><img
								class="rounded" src="img\city-guide\home\bbosik.jpg" alt="Post"
								width="64"></a>
							<div class="ps-2 ms-1">
								<h5 class="fs-md nav-heading mb-1">
									<a class="fw-medium" href="3.2_foodDetailed.html"
										style="text-decoration: none;">뽀글이 두루찌개</a>
								</h5>
								<p class="fs-xs text-muted mb-0">마곡동 중앙6로 93 1층</p>
							</div>
						</div>
						<div class="d-flex align-items-start mb-3 mt-3"
							style="margin-left: 3%;">
							<a class="d-block flex-shrink-0" href="3.2_foodDetailed.html"><img
								class="rounded" img src="img\city-guide\home\samgyupsal.jpg"
								alt="Post" width="64"></a>
							<div class="ps-2 ms-1">
								<h5 class="fs-md nav-heading mb-1">
									<a class="fw-medium" href="3.2_foodDetailed.html"
										style="text-decoration: none;">바담</a>
								</h5>
								<p class="fs-xs text-muted mb-0">공항대로 269-15</p>
							</div>
						</div>
						<div class="d-flex align-items-start mb-3 mt-3"
							style="margin-left: 10px;">
							<a class="d-block flex-shrink-0" href="3.2_foodDetailed.html"><img
								class="rounded" src="img\city-guide\home\sushi.jpg" alt="Post"
								width="64"></a>
							<div class="ps-2 ms-1">
								<h5 class="fs-md nav-heading mb-1">
									<a class="fw-medium" href="3.2_foodDetailed.html"
										style="text-decoration: none;">나미식당</a>
								</h5>
								<p class="fs-xs text-muted mb-0">가양동 160-13</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</div>
</section>

<!-- Videos-->
<div class="container-fluid"
	style="min-height: 425px; margin-bottom: 80px; margin-top: 30px; background-color: #70bfac;">
	<h2 class="display-5 fw-bold text-center" style="margin-top: 50px;"></h2>
	<div class="col-lg-6 mx-auto text-center">
		<p class="lead mb-4"></p>
	</div>

	<div class="container" style="margin-top: 20px;">
		<div class="row justify-content-center">
			<div class="col-lg-5 text-center">
				<div class="youtube-thumbnail" style="height: 330px;">
					<iframe src="https://www.youtube.com/embed/nmY3X5dE9HQ"
						frameborder="0" style="height: 100%;"></iframe>
				</div>
			</div>
			<div class="col-lg-1 text-center"></div>
			<div class="col-lg-5 text-center">
				<div class="youtube-thumbnail d-none d-lg-block d-xl-block"
					style="height: 330px;">
					<iframe src="https://www.youtube.com/embed/dZhcTWWMytI"
						frameborder="0" style="height: 100%;"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>





<section class="container mb-sm-2 mb-4 pb-lg-4">
	<div class="row">
		<div class="col-sm-12 h3 widget-title pb-1">오늘은 여기 어때요?</div>
	</div>
	<div class="card-body">
		<div class="tab-content">
			<div class="tab-pane fade show active" id="result5" role="tabpanel">
				<div class="px-5">
					<div
						class="tns-carousel-wrapper tns-controls-outside tns-nav-outside">
						<div class="tns-carousel-inner"
							data-carousel-options="
                          {&quot;items&quot;: 5, &quot;responsive&quot;: 
                            {&quot;0&quot;:{&quot;items&quot;:2},
                            &quot;480&quot;:{&quot;items&quot;:3, &quot;gutter&quot;: 16},
                            &quot;680&quot;:{&quot;items&quot;:4, &quot;gutter&quot;: 16},
                            &quot;850&quot;:{&quot;items&quot;:5, &quot;gutter&quot;: 16}}}">
							<a class="swap-image" href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/1.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a> <a class="swap-image"
								href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/2.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a> <a class="swap-image"
								href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/3.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a> <a class="swap-image"
								href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/4.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a> <a class="swap-image"
								href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/5.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a> <a class="swap-image"
								href="2.2_hotplaceDetailed .html"><img
								src="img/city-guide/home/1.jpeg"
								class="rounded-2 img-fluid gallery-item" alt="Image1"
								width="300px" height="250px"></a>


						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="html5" role="tabpanel">
				<pre class="line-numbers">
						<code class="lang-html">
    
                      </code>
					</pre>
			</div>
			<div class="tab-pane fade" id="pug5" role="tabpanel">
				<pre class="line-numbers">
						<code class="lang-pug">
    
                        </code>
                      </pre>
			</div>
		</div>
	</div>
</section>




<!-- Blog: Latest posts-->
<section class="container my-2 py-lg-4">
	<div
		class="d-sm-flex align-items-center justify-content-between mb-4 pb-2">
		<h2 class="h3 mb-sm-0">회원님들의 후기</h2>
		<a class="btn btn-link fw-normal ms-sm-3 p-0" href="5_community.html">커뮤니티
			페이지<i class="fi-arrow-long-right ms-2"></i>
		</a>
	</div>
	<!-- Carousel-->
	<div class="tns-carousel-wrapper tns-nav-outside mb-md-2">
		<div class="tns-carousel-inner d-block"
			data-carousel-options="{&quot;controls&quot;: false, &quot;gutter&quot;: 24, &quot;autoHeight&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1200&quot;:{&quot;items&quot;:3}}}">
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="5.2_communityBlog.html"><img
					class="rounded-3" src="img/city-guide/blog/01.jpg" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="#">핫플레이스</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="5.2_communityBlog.html">뮤지컬 관람 후기</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href="#"><img
					class="rounded-circle" src="img/avatars/16.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">박길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i
								class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.05.23</span><span><i
								class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>No
								comments</span>
						</div>
					</div></a>
			</article>
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="5.2_communityBlog.html"><img
					class="rounded-3" src="img/city-guide/blog/02.jpg" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="#">맛집</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="5.2_communityBlog.html">맛집 방문 후기</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href="#"><img
					class="rounded-circle" src="img/avatars/18.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">최길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i
								class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.05.23</span><span><i
								class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>4
								comments</span>
						</div>
					</div></a>
			</article>
			<!-- Item-->
			<article>
				<a class="d-block mb-3" href="5.2_communityBlog.html"><img
					class="rounded-3" src="img/city-guide/blog/03.jpg" alt="Post image"></a><a
					class="fs-xs text-uppercase text-decoration-none" href="#">숙박</a>
				<h3 class="fs-base pt-1">
					<a class="nav-link" href="5.2_communityBlog.html">강남호텔 숙박 후기</a>
				</h3>
				<a class="d-flex align-items-center text-decoration-none" href="#"><img
					class="rounded-circle" src="img/avatars/17.png" width="44"
					alt="Avatar">
					<div class="ps-2">
						<h6 class="fs-sm text-nav lh-base mb-1">김길동</h6>
						<div class="d-flex text-body fs-xs">
							<span class="me-2 pe-1"><i
								class="fi-calendar-alt opacity-70 mt-n1 me-1 align-middle"></i>2023.05.23</span><span><i
								class="fi-chat-circle opacity-70 mt-n1 me-1 align-middle"></i>2
								comments</span>
						</div>
					</div></a>
			</article>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />





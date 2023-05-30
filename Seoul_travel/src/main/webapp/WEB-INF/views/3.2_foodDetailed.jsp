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
			<li class="breadcrumb-item"><a href="3_food.html"><strong>맛집</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>맛집
					상세</strong></li>




			<!-- Page content-->
			<div class="container   mb-md-4 ">

				<!-- Title + Sharing-->
				<div
					class="d-sm-flex align-items-end align-items-md-center justify-content-between position-relative mb-4"
					style="z-index: 1725;"></div>
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
							<div class="tns-carousel-inner"
								data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
								<div>
									<img class="rounded-3"
										src="https://blog.kakaocdn.net/dn/xr0iG/btrDrQS6JoT/L2ilf1cuJBrjGCEYXjJvI1/img.png"
										alt="Image">
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
								src="https://blog.kakaocdn.net/dn/xr0iG/btrDrQS6JoT/L2ilf1cuJBrjGCEYXjJvI1/img.png"
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
													type="text" id="review-name" placeholder="이름을 입력하세요"
													required>
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
													class="form-control form-select" id="review-rating"
													required>

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
											<button
												class="btn btn-primary d-block rounded-pill w-100 mb-4"
												type="submit">리뷰 작성하기</button>
										</form>
									</div>
								</div>
							</div>
						</div>

						<!-- Specs-->

						<div class="py-5">
							<h2 class="h4  " id="comments">평점</h2>
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
									<p>Vel dictum nunc ut tristique. Egestas diam amet, ut
										proin hendrerit. Dui accumsan at phasellus tempus consequat
										dignissim.</p>
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
					<div class="card col-md-4 pt-5 pt-md-0 px-4 pr-5 pb-4 card-dark">
						<div class="sticky-top pt-5">
							<div class="d-none d-md-block ">
								<!-- Heart icon -->
								<div class="col-6 pr-5">
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
										<div class="dropdown-menu dropdown-menu-end my-1">
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
								<!-- 별점 -->
								<span class="star-rating"><i
									class="star-rating-icon fi-star-filled active"></i><i
									class="star-rating-icon fi-star-filled active"></i><i
									class="star-rating-icon fi-star-filled active"></i><i
									class="star-rating-icon fi-star-filled active"></i><i
									class="star-rating-icon fi-star-filled active"></i></span><span
									class="fs-sm   opacity-70 align-middle ms-1">(5 reviews)</span>

								<div class="h1">등촌샤브칼국수 본점</div>



								<div class="d-flex align-items-center mb-1 ">
									<div class="text-nowrap border-end border-light pe-3 me-3">
										<div class="text-nowrap">
											<i class="fi-cafe fs-lg opacity-70 me-2 "></i> <span
												class="align-middle">칼국수,만두</span>
										</div>
										<div class="text-nowrap">
											<i class="fi-map-pin fs-lg opacity-70 me-2"></i> <span
												class="align-middle">경기 고양시 일산동구 무궁화로 118</span>
										</div>
										<i class="fi-clock fs-lg opacity-70 me-2"> </i> <span
											class="align-middle mb-3">영업시간</span>
									</div>
								</div>

								<div class="bg-secondary rounded-2 mt-3">
									<div class="d-flex align-items-center mx-2 ">
										<a><strong>브레이크 타임 : </strong><span class="opacity-70 ">11:00
												~ 21:00 </span>
									</div>
									</a>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>일요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>월요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>화요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>수요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>목요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>금요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
									<div class="d-flex align-items-center mx-2 ">
										<li><a style="color: #55AC9B;"><strong>토요일 :
											</a></strong><span class="opacity-70 ">11:00 ~ 21:00</span></li>
									</div>
								</div>
							</div>
							<!-- Card with icon boxes-->
							<div class="card card-body p-4 card-light mb-4">
								<div class="row row-cols-2 row-cols-sm-4 gx-3 gx-xl-4 gy-4">
									<div class="col text-dark text-center">
										<div class="d-table bg-secondary rounded-3 mx-auto p-3">
											<img src="Finder\Finder\dist\img\food\free-icon-parking.png"
												width="48" alt="Icon">
										</div>
										<div class="fs-sm pt-2 mt-1">포장 가능</div>
									</div>
									<div class="col text-dark text-center">
										<div class="d-table bg-secondary k rounded-3 mx-auto p-3">
											<img src="img\food\free-icon-food.png" width="48" alt="Icon">
										</div>
										<div class="fs-sm pt-2 mt-1">주차 가능</div>
									</div>
									<!-- <div class="col text-light text-center">
                  <div class="d-table bg-dark rounded-3 mx-auto p-3"><img src="img/car-finder/icons/driving-test.svg" width="48" alt="Icon"></div>
                  <div class="fs-sm pt-2 mt-1">Well-Equipped</div>
                </div>
                <div class="col text-light text-center">
                  <div class="d-table bg-dark rounded-3 mx-auto p-3"><img src="img/car-finder/icons/accident.svg" width="48" alt="Icon"></div>
                  <div class="fs-sm pt-2 mt-1">No Accident / Damage Reported</div>
                </div> -->
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
							</aside>
						</div>
						</section>

					</div>
				</div>
			</div>
	</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />



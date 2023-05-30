<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<!-- Page container-->
<div class="container mt-5 mb-md-4 py-5">
	<!-- Breadcrumbs-->
	<nav class="mb-4 pt-2 pt-lg-3" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="1.1_main_page (login).html"><strong>Home</strong></a></li>
			<li class="breadcrumb-item"><a href="0_myPage-info.html"><strong>ë§ì´íì´ì§</strong></a></li>
			<li class="breadcrumb-item active" aria-current="page"><strong>ì°í
					ìì</strong></li>
		</ol>
	</nav>
	<!-- Account header-->
	<div class="d-flex align-items-center justify-content-between pb-4 mb-2">
		<div class="d-flex align-items-center">
			<div class="position-relative flex-shrink-0">
				<img class="rounded-circle border border-white"
					src="img/avatars/29.png" width="100" alt="Annette Black">
				<button
					class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm position-absolute end-0 bottom-0"
					type="button" data-bs-toggle="tooltip" title="Change image">
					<i class="fi-pencil fs-xs"></i>
				</button>
			</div>
			<div class="ps-3 ps-sm-4">
				<h3 class="h4 mb-2">ìµê¸¸ë</h3>
				<span class="star-rating"><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i><i
					class="star-rating-icon fi-star-filled active"></i></span>
			</div>
		</div>
		<a class="nav-link p-0 d-none d-md-block" href="signin-light.html"><i
			class="fi-logout mt-n1 me-2"></i>ë¡ê·¸ìì</a>
	</div>
	<!-- Page content-->
	<div class="card card-body p-4 p-md-5 shadow-sm">
		<!-- Account nav-->
		<div class="mt-md-n3 mb-4">
			<a
				class="btn btn-outline-primary btn-lg rounded-pill w-100 d-md-none"
				href="#account-nav" data-bs-toggle="collapse"><i
				class="fi-align-justify me-2"></i>Account Menu</a>
			<div class="collapse d-md-block" id="account-nav">
				<ul
					class="nav nav-pills flex-column flex-md-row pt-3 pt-md-0 pb-md-4 border-bottom-md">
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link" href="0_myPage-info.html"><i
							class="fi-user mt-n1 me-2 fs-base"></i>ëì ì ë³´</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link active" href="0_myPage-favoritHotel.html"
						aria-current="page"><i class="fi-heart mt-n1 me-2 fs-base"></i>ì°í
							ìì</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link" href="0_myPage-favoritFood.html"
						aria-current="page"><i class="fi-heart mt-n1 me-2 fs-base"></i>ì°í
							ë§ì§</a></li>
					<li class="nav-item mb-md-0 me-md-2 pe-md-1"><a
						class="nav-link" href="0_myPage-reviews.html"><i
							class="fi-star mt-n1 me-2 fs-base"></i>ëì ë¦¬ë·°</a></li>

					<li class="nav-item d-md-none"><a class="nav-link"
						href="signin-light.html"><i
							class="fi-logout mt-n1 me-2 fs-base"></i>Sign Out</a></li>
				</ul>
			</div>
		</div>
		<div
			class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between mb-4 pt-2">
			<h1 class="h3 mb-md-0">ì°í ìì</h1>
			<!-- Sort-->
			<div class="d-flex align-items-sm-center align-items-end">
				<div
					class="d-flex flex-sm-row flex-column align-items-sm-center w-100 pe-sm-2">
					<label class="mb-sm-0 mb-2 me-sm-2 pe-sm-1 text-nowrap"
						for="sortby"><i class="fi-arrows-sort me-2"></i> ì ë ¬ :
					</label> <select class="form-select form-select-sm" id="sortby"
						style="min-width: 180px;">
						<option>ìµì ì</option>
						<option>ì¤ëëì</option>
						<option>íì ì</option>
					</select>
				</div>
				<a
					class="d-inline-block ms-sm-4 ms-3 mb-sm-0 mb-2 fs-sm fw-bold text-decoration-none text-nowrap"
					href="#"><i class="fi-x fs-xs me-2 align-middle"></i>ëª¨ë
					ì­ì </a>
			</div>
		</div>
		<!-- Favorites grid-->
		<div
			class="row row-cols-lg-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-lg-4 mb-4">
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/07.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Merry
							Berry Motel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
							class="text-muted">&nbsp;(13)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/08.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Serenity
							Hotel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
							class="text-muted">&nbsp;(17)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/09.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Repose
							Hotel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
							class="text-muted">&nbsp;(45)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/10.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Tranquil
							Hostel</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.0</b><span
							class="text-muted">&nbsp;(15)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/06.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Bliss
							Apartment</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span
							class="text-muted">&nbsp;(32)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
			<!-- Item-->
			<div class="col pt-2">
				<div class="position-relative">
					<div class="position-relative mb-3">
						<button
							class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							title="Remove from Favorites">
							<i class="fi-heart-filled"></i>
						</button>
						<img class="rounded-3" src="img/city-guide/catalog/11.jpg"
							alt="Article img">
					</div>
					<h3 class="mb-2 fs-lg">
						<a class="nav-link stretched-link" href="4.1_accmmoGallery.html">Soothe
							&amp; Stay</a>
					</h3>
					<ul class="list-inline mb-0 fs-xs">
						<li class="list-inline-item pe-1"><i
							class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.6</b><span
							class="text-muted">&nbsp;(40)</span></li>
						<li class="list-inline-item pe-1"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>ê°ë¨êµ¬</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Load more-->
		<a class="d-inline-block py-sm-2 fw-bold text-decoration-none"
			href="#"><i class="fi-refresh me-2 align-middle"></i>ìë¡ê³ ì¹¨</a>
	</div>
</div>
</main>




<!-- Footer-->
<footer class="footer pt-lg-1 pt-4 bg-dark text-light"
	style="margin-top: 100px;">
	<div class="container-fluid mb-1 py-4 pb-lg-1">
		<div class="row gy-2">
			<div class="col-lg-5 col-md-2 col-sm-3">
				<div class="mb-3 pb-sm-3">
					<a class="d-inline-block" href="1_main_page.html"><img
						src="img\city-guide\logo\logo.gif" width="100" alt="Logo"></a>
				</div>
				<ul class="nav nav-light flex-column">
					<li class="nav-item mb-2"><a
						class="nav-link p-0 fw-normal text-light text-nowrap"
						href="mailto:example@gmail.com"><i
							class="fi-mail mt-n1 me-1 align-middle text-primary"></i>Seuoltrip@email.com</a></li>
					<li class="nav-item mb-2"><a
						class="nav-link p-0 fw-normal text-light text-nowrap"
						href="tel:4065550120"><i
							class="fi-device-mobile mt-n1 me-1 align-middle text-primary"></i>(02)
							1234-5678</a></li>
				</ul>
			</div>
			<!-- Links-->
			<div class="col-lg-2 col-md-3 col-sm-4">
				<h3 class="fs-base text-light">SNS</h3>
				<ul class="list-unstyled fs-sm">
					<li><a class="nav-link-light" href="#">Blog</a></li>
					<li><a class="nav-link-light" href="#">Post</a></li>
					<li><a class="nav-link-light" href="#">FaceBook</a></li>
					<li><a class="nav-link-light" href="#">Twitter</a></li>
					<li><a class="nav-link-light" href="#">Kakao Story</a></li>
					<li><a class="nav-link-light" href="#">Instagram</a></li>
				</ul>
			</div>

			<!-- Links-->
			<div class="col-lg-2 col-md-3 col-sm-4">
				<h3 class="fs-base text-light">About</h3>
				<ul class="list-unstyled fs-sm">
					<li><a class="nav-link-light" href="#">About us</a></li>
					<li><a class="nav-link-light" href="#">Contact us</a></li>
					<li><a class="nav-link-light" href="#">FAQs & support</a></li>
					<li><a class="nav-link-light" href="#">Mobile app</a></li>
					<li><a class="nav-link-light" href="#">Blog</a></li>
				</ul>
			</div>

			<!-- Links-->

			<div class="col-lg-2 col-md-3 col-sm-4">
				<h3 class="fs-base text-light">Profile</h3>
				<ul class="list-unstyled fs-sm">
					<li><a class="nav-link-light" href="#">My account</a></li>
					<li><a class="nav-link-light" href="#">My comments</a></li>
					<li><a class="nav-link-light" href="#">My favorite area</a></li>
					<li><a class="nav-link-light" href="#">My travel diary</a></li>

				</ul>
			</div>
			<!-- Subscription form-->
		</div>

		</form>
	</div>
	</div>
	</div>
	<div class="py-1 border-top border-light">
		<div
			class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
			<!-- Copyright-->
			<p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0">
				<span class="text-light opacity-60">&copy; All rights
					reserved. Made by </span><a class="nav-link-light fw-bold"
					href="https://createx.studio/" target="_blank" rel="noopener">ìì¸ìë´ì</a>
			</p>
			<div
				class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
				<!-- Links-->
				<div class="d-flex flex-wrap fs-sm mb-lg-3 mb-4 pe-lg-10">
					<a class="nav-link-light px-10 mx-10" href="#">ê°ì¸ì ë³´ì²ë¦¬ë°©ì¹¨</a><a
						class="nav-link-light px-2 mx-1" href="#">ì´ì©ì½ê´</a><a
						class="nav-link-light px-2 mx-1" href="#">Q/A</a><a
						class="nav-link-light px-2 mx-1" href="#">ì°¾ìì¤ìë ê¸¸</a><a
						class="nav-link-light px-2 mx-1" href="#">ì ìê¶ì ì±</a><a
						class="nav-link-light px-2 mx-1" href="#">ê³ ê°ìë¹ì¤íì¥</a>
				</div>
				<div class="d-flex align-items-center">

					<!-- Socials-->
					<div class="ms-4 ps-lg-2 text-nowrap">
						<a
							class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
							href="#"><i class="fi-facebook"></i></a><a
							class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
							href="#"><i class="fi-twitter"></i></a><a
							class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
							href="#"><i class="fi-telegram"></i></a><a
							class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
							href="#"><i class="fi-messenger"></i></a>
					</div>

				</div>


			</div>

		</div>

	</div>

</footer>
<!-- Back to top button-->
<a class="btn-scroll-top" href="#top" data-scroll><span
	class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
	class="btn-scroll-top-icon fi-chevron-up"> </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="vendor/simplebar/dist/simplebar.min.js"></script>
<script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="js/theme.min.js"></script>
</body>
</html>
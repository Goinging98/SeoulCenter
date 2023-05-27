<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  <!-- Footer-->
  <footer class="footer pt-lg-1 pt-4 bg-dark text-light" style="margin-top: 100px;">
    <div class="container-fluid mb-1 py-4 pb-lg-1">
      <div class="row gy-2">
        <div class="col-lg-5 col-md-2 col-sm-3">
          <div class="mb-3 pb-sm-3"><a class="d-inline-block" href="city-guide-home-v1.html"><img src="img/logo/logo-light.svg" width="100" alt="Logo"></a></div>
          <ul class="nav nav-light flex-column">
            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap" href="mailto:example@gmail.com"><i class="fi-mail mt-n1 me-1 align-middle text-primary"></i>Seuoltrip@email.com</a></li>
            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap" href="tel:4065550120"><i class="fi-device-mobile mt-n1 me-1 align-middle text-primary"></i>(02) 1234-5678</a></li>
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
          <h3 class="fs-base text-light">About </h3>
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
          <h3 class="fs-base text-light">Profile </h3>
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
      <div class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
        <!-- Copyright-->
        <p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0"><span class="text-light opacity-60">&copy; All rights reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank" rel="noopener">서울상담소</a></p>
        <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
          <!-- Links-->
          <div class="d-flex flex-wrap fs-sm mb-lg-3 mb-4 pe-lg-10"><a class="nav-link-light px-10 mx-10" href="#">개인정보처리방침</a><a class="nav-link-light px-2 mx-1" href="#">이용약관</a><a class="nav-link-light px-2 mx-1" href="#">Q/A</a><a class="nav-link-light px-2 mx-1" href="#">찾아오시는 길</a><a class="nav-link-light px-2 mx-1" href="#">저작권정책</a><a class="nav-link-light px-2 mx-1" href="#">고객서비스현장</a></div>
          <div class="d-flex align-items-center">
           
            <!-- Socials-->
            <div class="ms-4 ps-lg-2 text-nowrap"><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-facebook"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-twitter"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-telegram"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-messenger"></i></a></div>
          
          </div>
          
          
        </div>
        
      </div>
      
    </div>
    
  </footer>


 +
  <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">
    </i></a>
  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
  <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
  <script src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.min.js"></script>
</body>

</html>
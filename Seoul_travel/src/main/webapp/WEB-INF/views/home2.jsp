<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Spring 홈페이지" name="title"/>
</jsp:include>

<section id="content">
	<h3>Spring 기반의 MVC2 패턴을 활용한 Web Application 입니다.</h3>


	<h3>회원가입</h3>
	<!-- REST API 키 =  client_id -->
	<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=c8b789ddca5e4e1a42e75f13460f370a&redirect_uri=http://localhost/mvc/member/enroll/kakao">
		<img src="${path}/resources/images/kakao_login_medium_narrow.png" >
	</a>
	<br>
	
	<h3>로그인</h3>
	<!-- REST API 키 =  client_id -->
	<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=c8b789ddca5e4e1a42e75f13460f370a&redirect_uri=http://localhost/mvc/kakaoLogin">
		<img src="${path}/resources/images/kakao_login_medium_narrow_login.png" >
	</a>

	<h3>카카오 맵 데모</h3>
	1. 좌표로 마커 표기하기(일반) <a href="${path}/kakaoMap1">이동</a> <br>
	2. 좌표로 마커 표기하기(커스텀) <a href="${path}/kakaoMap2">이동</a><br>
	3. 주소-좌표 변환
	<form action="${path}/kakaoMap3" method="get" style="width: 400px">
		주소 <input type="text" style="width: 100%" name="address" value="서울특별시 강남구 역삼동 테헤란로 212"><input type="submit" value="확인">
	</form>
	<br>	
	
	<h3>카카오 페이 데모</h3>
	<div>결제하기</div>
		<form action="${path}/kakaoPay" method="post">
			이름 <input type="text" name="item_name" value="아이폰 14 Pro"><br>
			가격 : <input type="text" name="total_amount" value="5000"><br>
			수량 : <input type="text" name="quantity" value="1"><br>
			<input type="submit" value="확인">
		</form>
	<br>
	
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


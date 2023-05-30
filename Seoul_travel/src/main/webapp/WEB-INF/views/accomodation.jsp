<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<c:forEach var="aItem" items="${aList}">
 	${aItem.title}
 	<br>
</c:forEach>


<style>
.video-container {
	position: relative;
	top: -120px; /* 비디오를 위로 130px 이동시키려면 값을 조정하세요 */
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


<jsp:include page="/WEB-INF/views/common/footer.jsp" />



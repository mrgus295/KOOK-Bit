<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<jsp:include page="/WEB-INF/views/layout/include.jsp"/>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/jsinclude.jsp"/>
	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/layout/side.jsp"/>
	
	
	
	<!-- 컨텐츠 시작 -->
	<main id="main" class="main">
	
	</main>
	<!-- 컨텐츠 종료 -->
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log('market()', market());
		});
		function market(){
			var result = null;
			$.ajax({
				type: "GET",
				url: "/api/market",
				dataType : 'json',
				contentType: "application/json",
				data: {},
				async: false,
				success : function (data) {
					console.log('data', data);
					result = data;
				},
				beforeSend: function(){
					
				},
				complete: function(){
					
				},
				error : function(request, status, error) {
					
				}
			});
			return result;
		}
	</script>
</body>
</html>
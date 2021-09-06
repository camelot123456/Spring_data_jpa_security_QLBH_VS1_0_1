<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<script src="/public/ckeditor/ckeditor.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/partials/admin/header.jsp" %>
	<div class="container-fluid mt-4">
		<%@include file="/WEB-INF/views/partials/admin/sidebar.jsp" %>
		<dec:body/>
	</div>
	<%@include file="/WEB-INF/views/partials/admin/footer.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="/public/js/handlerAPI.js"></script>
</body>
</html>
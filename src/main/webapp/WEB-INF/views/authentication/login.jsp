<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../taglib.jsp" %>

<div>
	<form action="/handler_security_authorizi" method="POST" class="bg-light rounded shadow-lg mx-auto my-5 p-4 border" style="width: 35%;" novalidate>
		<div class=" form-group mb-4">
	    	<h3 class="text-center">Đăng nhập</h3>
		</div>
		
		<div class=" form-group my-3 ">
	    	<label for="username" class="form-label">Tên đăng nhập</label>
	    	<input class="form-control shadow" id="username" name="username" type="text">
		</div>
		
		<div class=" form-group my-3 ">
	    	<label for="password" class="form-label">Mật khẩu</label>
	    	<input class="form-control shadow" id="password" name="password" type="password">
		</div>
		
		<div class=" form-group my-5 d-flex justify-content-between">
	    	<a href="#" style="width: 40%;" class="btn btn-primary shadow" type="submit">Đăng ký</a>
	    	<button style="width: 40%;" class="btn btn-primary shadow" type="submit">Đăng nhập</button>
		</div>

	</form>
</div>
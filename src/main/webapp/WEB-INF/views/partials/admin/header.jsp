<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../taglib.jsp" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="/home">Shop Online</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      	
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" tabindex="-1" aria-disabled="true" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">Disabled</a>
        </li>
      </ul>
      
      
      
      <ul class="navbar-nav justify-content-end align-items-center">
      	
        <c:if test="${empty account}">
        	<li class="nav-item">
	        	<a href="/register" class="btn btn-outline-success rounded-pill" style="width: 110px">Đăng ký</a>
	        </li>
	        <li class="nav-item mx-2">
	        	<a href="/login" class="btn btn-outline-success rounded-pill" style="width: 110px">Đăng nhập</a>
	        </li>
        </c:if>
        <c:if test="${not empty account}">
        	<li class="nav-item">
	        	<a class="nav-link" href="#">Xin chào, ${account.fullname}</a>
	        </li>
        </c:if>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img class="rounded-circle" style="width: 40px" alt="${account.fullname}" src="${account.image}">
          </a>
          <ul class="dropdown-menu  dropdown-menu-lg-end" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Hồ sơ cá nhân</a></li>
            <li><a class="dropdown-item" href="#">Blog của tôi</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
          </ul>
        </li>
      </ul>
     
    </div>
  </div>
</nav>
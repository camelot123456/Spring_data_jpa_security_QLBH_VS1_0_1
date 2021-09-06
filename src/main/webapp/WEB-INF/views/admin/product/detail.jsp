<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../taglib.jsp" %>
<div class="container mt-4">
	<div class="row my-2">
		<a href="javascript:history.back()" class="link-primary">Trở về</a>
	</div>
	<div class="row my-2">
		<h2>Thông tin sản phẩm</h2>
	</div>
	<div class="row my-2">
		<div class="row my-2">
			<div class="col-4">
				<img src="${product.image}" class="rounded mx-auto d-block" alt="${product.name}">
			</div>
			<div class="col-8">
				<div class="d-flex" style="height: 200px;">
				  <div class="vr">
				  	<h3>${product.name}</h3>
				  	<h3>${product.quantity}</h3>
				  	<h3>${product.price}</h3>
				  </div>
				</div>
			</div>
		</div>
		<div class="row my-2">
			<div class="card text-center">
			  <div class="card-header">
			    <ul class="nav nav-tabs card-header-tabs">
			      <li class="nav-item">
			        <a class="nav-link active" aria-current="true" href="#">Active</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Link</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
			      </li>
			    </ul>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title">Special title treatment</h5>
			    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
			    <a href="#" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
		</div>
	</div>
</div>
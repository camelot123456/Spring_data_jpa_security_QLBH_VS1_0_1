<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../taglib.jsp"%>
<div class="row">
	<div class="col-3">
		<div class="list-group">
		  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
		    The current link item
		  </a>
		  <a href="#" class="list-group-item list-group-item-action">A second link item</a>
		  <a href="#" class="list-group-item list-group-item-action">A third link item</a>
		  <a href="#" class="list-group-item list-group-item-action">A fourth link item</a>
		  <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
		</div>		
	</div>
	<div class="col-7">
		<div class="">
			<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-indicators">
			    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>First slide label</h5>
			        <p>Some representative placeholder content for the first slide.</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img src="https://img.freepik.com/free-photo/delicious-vietnamese-food-including-pho-ga-noodles-spring-rolls-white-table_181624-34062.jpg?size=626&ext=jpg&ga=GA1.2.2101254547.1630368000" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>Second slide label</h5>
			        <p>Some representative placeholder content for the second slide.</p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img src="https://media.istockphoto.com/photos/top-view-table-full-of-food-picture-id1220017909?k=20&m=1220017909&s=170667a&w=0&h=4I_l8ZyiZ8sebPsRo6UpFmdrV-MZgEvxb3smE-TbgLE=" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>Third slide label</h5>
			        <p>Some representative placeholder content for the third slide.</p>
			      </div>
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>	
		</div>
		<div class="row my-4">
			<c:forEach begin="1" end="5">
				<div class="row">
					<h3>Category Name</h3>
				</div>
				<div class="row row-cols-2 row-cols-lg-4 g-2 g-lg-3">
				    <c:forEach begin="1" end="8">
				      <div class="col p-3 bg-light">
						<div class="card" style="width: auto;">
						  <a href="#">
						  	<img src="https://media.metrip.vn/upload_photos/g4/37679/s256x256/usr-photo-d1d5465cff9d11e9b2ce98be9447cc1d.jpg" class="card-img-top" alt="...">
						  </a>
						  <div class="card-body">
						    <h5 class="card-title">Chicken</h5>
						    <p class="card-text">$17</p>
						    <a href="#" class="btn btn-primary">ADD CART</a>
						  </div>
						</div>				      	
					  </div>
				    </c:forEach>
				</div>
			</c:forEach>
		</div>
		<div class="row">
			
		</div>
	</div>
	<div class="col-2">
		<div class="vstack gap-3">
		  <div class="bg-light border">First item</div>
		  <div class="bg-light border">Second item</div>
		  <div class="bg-light border">Third item</div>
		</div>		
	</div>
</div>
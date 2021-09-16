<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../taglib.jsp"%>
	
	<input type="hidden" id="var-up-ad" value="">
	
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body bg-light shadow">
        <form class="was-validated form-data" method="POST">
		    <div class="row">
				  <div class="col-4 p-3">
				  	<div class="row my-3">
					  	<img src="http://lh3.googleusercontent.com/7rADIIAXkEedoq9sf6SO4ZiBXkpu-XQCJBxratH4Ij4D1LxH4NbvcdRPLmjdsxfG662h" class="rounded mx-auto d-block _image" alt="">
				  	</div>
				  	
				  	<div class="row mt-4">
				  		<div>
				  			
				  		</div>
				  	</div>
				  	
				  	<div class="row my-3">
					  	<div class="mb-3" hidden>
						    <input type="file" name="image" class="form-control" id="image-file" aria-label="file example" required>
						    <div class="invalid-feedback">Example invalid form file feedback</div>
						</div>
						<div class="mb-3">
							<label for="image" class="form-label">Ảnh sản phẩm</label>
						    <input type="text" class="form-control" name="image" id="image" required>
						</div>
				  	</div>
				  </div>
				  <div class="col-8 p-3">
				  	<div class="mb-3">
					    <label for="_id" class="form-label">Mã sản phẩm</label>
					    <input class="form-control" id="_id" disabled="disabled" required/>
					    <input class="form-control" type="hidden" name="id" id="id" required/>
					</div>
					
					<div class="mb-3">
						<label for="idCategory" class="form-label">Mã danh mục</label>
					    <select class="form-select" id="idCategory" name="idCategory" required aria-label="select example">
					      <option value="">-- Chọn mã danh mục --</option>
					      <c:forEach var="category" items="${categories}">
					      	<option value="${category.id}">${category.name}</option>
					      </c:forEach>
					    </select>
					    <div class="invalid-feedback">Yêu cầu chọn mã danh mục</div>
					</div>
					
					<div class="mb-3">
					    <label for="name" class="form-label">Tên sản phẩm</label>
					    <input type="text" class="form-control" name="name" id="name" required>
					</div>
					
					<div class="mb-3">
						<label for="quantity" class="form-label">Số lượng sản phẩm</label>
					    <input type="text" class="form-control" name="quantity" id="quantity" required>
					</div>
					
					<div class="mb-3">
						<label for="price" class="form-label">Giá sản phẩm</label>
					    <input type="text" class="form-control" name="price" id="price" required>
					</div>
					
					<div class="mb-3">
						<label for="description" class="form-label">Mô tả sản phẩm</label>
	    				<textarea class="form-control is-invalid" name="description" id="description" placeholder="Required example textarea" required></textarea>
					</div>
			  	</div>
		     </div>
		     <div class="row">
		     	<div class="d-flex flex-row-reverse bd-highlight">
				  <div class="p-2 bd-highlight">
				  	<button type="submit" class="btn btn-outline-success btn-update">Thêm</button>
				  </div>
				  <div class="p-2 bd-highlight">
				  	<button type="button" class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample1" aria-expanded="false" aria-controls="multiCollapseExample1">Hủy</button>
				  </div>
				</div>	
		     </div>
		</form>
      </div>
    </div>

<script>
	
	document.addEventListener('DOMContentLoaded', (event)=>{
		var $ = document.querySelector.bind(document)
		var $$ = document.querySelectorAll.bind(document)
		
		var btnUpdate = $('.btn-update')
		var formData = $('.form-data')
		
		var varUpAd = $('#var-up-ad')
		
		var description = ''
			description = CKEDITOR.replace('description')
		
		btnUpdate.addEventListener('click', (e)=>{
			e.preventDefault();
			var form = new FormData(formData);
			var product = {
					id: form.get('id'),
					image: form.get('image'),
					name: form.get('name'),
					quantity: form.get('quantity'),
					price: form.get('price'),
					description: description.getData(),
					category: {
						id: form.get('idCategory')
					}
			}
			if (varUpAd.value == 'update') {
				option = {
					url: '/admin/products/product',
					method: 'PUT',
					type: CONTENT_TYPE,
					data: product
				}
			} else {
				option = {
					url: '/admin/products/product',
					method: 'POST',
					type: CONTENT_TYPE,
					data: product
				}
			}
			
			callAPI(option);
			location.reload();
		})
		
		
	})
</script>
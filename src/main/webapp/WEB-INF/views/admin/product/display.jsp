<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../taglib.jsp" %>

<div class="row my-4">
	<div class="d-flex justify-content-between">
		<h3>Danh sách sản phẩm</h3>
		<a data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1" class="btn btn-outline-primary btn-add">Thêm mới sản phẩm</a>
	</div>
</div>

<div class="row my-4">
	<%@include file="./updateAndInsert.jsp" %>
</div>

<div class="card card-body bg-light rounded-3 my-4 shadow">
	<table class="table table-hover ">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Mã</th>
	      <th scope="col">Ảnh</th>
	      <th scope="col">Tên</th>
	      <th scope="col">Số lượng</th>
	      <th scope="col">Giá</th>
	      <th scope="col" class="text-center">Công cụ</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:if test="${count==0}">
    		<tr>
    			<th colspan="7" class="text-center"><p>Danh sách trống. <a href="#">Thêm sản phẩm</a><p></th>
    		</tr>
   		</c:if>
	    <c:forEach varStatus="loop" var="product" items="${products}">
    		
	    	<tr>
		      <th scope="row">${loop.count}</th>
		      <td>${product.id}</td>
		      <td><img src="${product.image}" style="width: 85px;" class="rounded"></td>
		      <td>${product.name}</td>
		      <td>${product.quantity}</td>
		      <td>${product.price}</td>
		      <td class="text-center">
				  <a href="/admin/products/${product.id}/product" class="link-primary">Chi tiết</a>
				  <div class="vr"></div>
				  <a data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1" class="link-primary btn-edit">
					  Sửa
					<input type="hidden" class="tag_id" value="${product.id}">
			    	<input type="hidden" class="tag_img" value="${product.image}"><input type="hidden" class="tag_description" value="${product.description}">
			    	<input type="hidden" class="tag_name" value="${product.name}">
					<input type="hidden" class="tag_quantity" value="${product.quantity}">
			    	<input type="hidden" class="tag_price" value="${product.price}">
			    	<input type="hidden" class="tag_description" value="${product.description}">
			    	<input type="hidden" class="tag_category" value="${product.category.id}">
				  </a>
				  <div class="vr"></div>
				  <a type="button" class="link-primary btn-del" data-bs-toggle="modal" data-bs-target="#exampleModal">
					  Xóa
					  <input type="hidden" class="tag_id_del" value="${product.id}">
				  </a>
			      
		      </td>
		    </tr>
	    </c:forEach>
	  </tbody>
	</table>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Bạn có muốn xóa sản phẩm này không?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary btn-delete">Xóa</button>
        <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>

<script>
	var $ = document.querySelector.bind(document)
	var $$ = document.querySelectorAll.bind(document)
	
	var varUpAd = $('#var-up-ad')
	var btnAdd = $('.btn-add')
	var btnEdit = $('.btn-edit')
	
	function _value(e, field) {
		return e.target.querySelector(field).value
	}
	
	function set(e, param, value) {
		$(param).value = _value(e, value)
	}
	
	function refresh() {
		$('#id').value = $('#image').value = $('#name').value = $('#quantity').value = $('#price').value = $('#idCategory').value = ''
	}
	
	btnAdd.addEventListener('click', (e)=>{
		varUpAd.value = 'insert'
		$('#id').setAttribute('type', 'text')
		$('#_id').setAttribute('type', 'hidden')
		$('.btn-update').innerHTML = "Thêm"
		$('._image').src = 'http://lh3.googleusercontent.com/7rADIIAXkEedoq9sf6SO4ZiBXkpu-XQCJBxratH4Ij4D1LxH4NbvcdRPLmjdsxfG662h'
		CKEDITOR.instances.description.setData('')
		refresh()
	})
	
	if(btnEdit){
		btnEdit.addEventListener('click', (e)=>{
			varUpAd.value = 'update'
			$('#id').setAttribute('type', 'hidden')
			$('#_id').setAttribute('type', 'text')
			$('.btn-update').innerHTML = "Lưu"
			set(e, '#id', '.tag_id')
			set(e, '#_id', '.tag_id')
			set(e, '#image', '.tag_img')
			set(e, '#name', '.tag_name')
			set(e, '#quantity', '.tag_quantity')
			set(e, '#price', '.tag_price')
			set(e, '#idCategory', '.tag_category')
			$('._image').src = _value(e, '.tag_img')
			CKEDITOR.instances.description.setData(_value(e, '.tag_description'))
		})
	}
	
	
	//------------------------------------------------------------------------------------------------------
	
	var btnDelete = $('.btn-delete')
	var btnDel = $('.btn-del')
	var id = ''
	
	if (btnDel) {
		btnDel.addEventListener('click', (e)=>{
			id = _value(e, '.tag_id_del')
		})
	}
	
	btnDelete.addEventListener('click', (e)=>{
		
		e.preventDefault()
		
		var product = {id}
		
		option = {
			url: '/admin/products/product',
			method: 'DELETE',
			type: CONTENT_TYPE,
			data: product
		}
		
		callAPI(option);
		id = ''
		location.reload();
	})
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message" >
	<%@ include file="static/menu.jsp" %>
	
	<div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
		    <p class="col-md-8 fs-4">상품 등록 페이지입니다.</p>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" >Korean</a>|<a href="?language=en">English</a>
		</div>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productId" /></label>
			<div class="col-sm-3">
				<input type="text" id="productId" name="productId" class="form-control">
			</div>
		</div> 
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="pname" /></label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitPrice" />가격</label>
			<div class="col-sm-3">
				<input type="text" id="unitPrice" name="unitPrice" class="form-control">
			</div>
		</div> 
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description" /></label>
			<div class="col-sm-5">
				<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="manufactuter" /></label>
			<div class="col-sm-3">
				<input type="text" name="manufactuter" class="form-control">
			</div>
		</div> 
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="category" /></label>
			<div class="col-sm-3">
				<input type="text" name="category" class="form-control">
			</div>
		</div> 
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
			<div class="col-sm-3">
				<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="condition" /></label>
			<div class="col-sm-5">
				<input type="radio" name="condition" value="New ">
				<fmt:message key="condition_New" />
				<input type="radio" name="condition" value="Old ">
				<fmt:message key="condition_Old" />
				<input type="radio" name="condition" value="Refurbished ">
				<fmt:message key="condition_Refurbished" />
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productImage" /></label>
			<div class="col-sm-5">
				<input type="file" name="productImage" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()">
			</div>
		</div>
		</form> 
	</div>
</fmt:bundle>	
</body>
</html>
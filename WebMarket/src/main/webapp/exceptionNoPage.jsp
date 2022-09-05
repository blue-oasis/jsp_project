<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="static/menu.jsp" />
	<div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold">
		    	<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		    </h1>
		    <p class="col-md-8 fs-4">
		    </p>
		</div>
	</div>
	
	<div class="container">
		<p><%=request.getRequestURL()%>
		<p> <a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
	</div>
</body>
</html>
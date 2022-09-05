<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> 
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<script type="text/javascript">
    function addToCart() { 
        if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
            document.addForm.submit();
        } else {
            document.addForm.reset();
        }
    }
</script>
</head>
<body>
    <jsp:include page="static/menu.jsp" />
    
      <div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold">상품 정보</h1>
		    <p class="col-md-8 fs-4">상품 정보 페이지입니다.</p>
		</div>
	</div>
    <%
        String id = request.getParameter("id");
        ProductRepository dao = ProductRepository.getInstance();
        Product product = dao.getProductById(id);
    %>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p> <b>상품 코드 : </b><span class="badge bg-danger">
                    <%=product.getProductId()%></span>
                <p> <b>제조사</b> : <%=product.getManufacturer()%>
                <p> <b>분류</b> : <%=product.getCategory()%>
                <p> <b>재고 수</b> : <%=product.getUnitsInStock()%>
                <h4><%=product.getUnitPrice()%>원</h4>
                <p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
                    <a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
                    <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
                    <a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
                    </form>
            </div>
        </div>
        <hr>
    </div>
    <%-- footer --%>
	<%@ include file="static/footer.jsp" %>

</body>
</html>
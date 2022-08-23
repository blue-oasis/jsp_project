<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dto.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
    <%-- herder(nav) --%>
	<%@ include file="static/menu.jsp" %>

    <div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold">상품 목록</h1>
		    <p class="col-md-8 fs-4">상품 목록 페이지입니다.</p>
		</div>
	</div>
	
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>

    <div class="container">
        <div class="row" align="center">
            <%
                for(int i = 0; i<listOfProducts.size(); i++) {
                    Product product = listOfProducts.get(i);
                
            %>
            <div class="col-md-4">
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
            </div>
            <%
                }
            %>
        </div>
        <hr>
    </div>
    <%-- footer --%>
	<%@ include file="static/footer.jsp" %>
</body>
</html>
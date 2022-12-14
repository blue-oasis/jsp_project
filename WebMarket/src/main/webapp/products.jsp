<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
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
        ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

    <div class="container">
        <div class="row" align="center">
        	<%@ include file="dbconn.jsp" %>
           <%
                PreparedStatement pstmt = null;
           		ResultSet rs = null;
           		String sql = "select * from product";
           		pstmt = conn.prepareStatement(sql);
           		rs = pstmt.executeQuery();
           		while (rs.next()) {
                
            %>
            <div class="col-md-4">
            <img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_UnitPrice")%>원
                <p> <a href="./product.jsp?id=<%=rs.getString("p_id")%>"
                class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
            <%
                }
           	%>
         
            if (rs != null) {
            	rs.close();
            }
            if (pstmt != null) {
             	pstmt.close();
             }
            if (conn != null) {
            conn.close();
          	%>
        </div>
        <hr>
    </div>
    <%-- footer --%>
	<%@ include file="static/footer.jsp" %>
</body>
</html>
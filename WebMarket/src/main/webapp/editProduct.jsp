<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 편집</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<%@ include file="static/menu.jsp" %>

    <div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold">상품 편집</h1>
		    <p class="col-md-8 fs-4">상품 편집 페이지입니다.</p>
		</div>
	</div>


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
                <p><%
                	if(edit.equals("update")) {
                		%>
                		<a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>"
                		class="btn btn-success" role="button">수정 &raquo;></a>
                	<%
                		} else if(edit.equals("delete")) {
                			
                	%>
                	<a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')" class="btn btn-danger" role="button">
                	삭제 &raquo;</a>
                	<%
                		}
                	%>
                </div>
                <%
           			}
           		
           		if (rs != null) {
                	rs.close();
                }
                if (pstmt != null) {
                 	pstmt.close();
                 }
                if (conn != null) {
                conn.close();
                }
                %>
            </div>
            <hr>
           </div>
           <%@ include file="static/footer.jsp" %>
                	
                	
</body>
</html>
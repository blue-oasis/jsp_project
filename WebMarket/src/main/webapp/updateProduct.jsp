<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>
	<%@ include file="static/menu.jsp" %>

    <div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		    <h1 class="display-5 fw-bold">상품 수정</h1>
		    <p class="col-md-8 fs-4">상품 수정 페이지입니다.</p>
		</div>
	</div>
		<%@ include file="dbconn.jsp" %>
		<%
			String productId = request.getParameter("id");
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select * from product where p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			%>
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
					</div>
					<div class="col-md-7">
						<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post"
						enctype="multipart/form-data">
						<lable class="col-sm2">상품 코드</lable>
							<div class="col-sm-3">
								<input type="text" id="productId" name="productId" class="form-control" value='<%=rs.getString("p_id") %>' >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">상품 코드</lable>
							<div class="col-sm-3">
								<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("p_name") %>" >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">가격</lable>
							<div class="col-sm-3">
								<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getString("p_unitPrice") %>" >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">상세 설명</lable>
							<div class="col-sm-5">
								<textarea name="description" cols="50" rows="2" class="form-control"><%=rs.getString("p_description") %>
								</textarea>
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">제조사</lable>
							<div class="col-sm-3">
								<input type="text" name="manufacturer" class="form-control" value="<%=rs.getString("p_manufacturer")%>" >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">분류</lable>
							<div class="col-sm-3">
								<input type="text" name="category" class="form-control" value="<%=rs.getString("p_category")%>" >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">재고 수</lable>
							<div class="col-sm-3">
								<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value="<%=rs.getLong("p_unitsInstock")%>" >
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">상태</lable>
							<div class="col-sm-5">
								<input type="radio" name="condition" value="New">
								신규 제품
								<input type="radio" name="condition" value="Old">
								중고 제품
								<input type="radio" name="condition" value="Refurbished">
								재생 제품
							</div>
						</div>
						<div class="form-group row">
							<lable class="col-sm2">이미지</lable>
							<div class="col-sm-5">
								<input type="file" name="productImage" class="form-control">				
							</div>
						</div>
						<div class="form-group row mb-5">				
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" class="btn btn-primary" value="수정">				
							</div>
						</div>
						</form>
					</div>
				</div>
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
</body>
</html>
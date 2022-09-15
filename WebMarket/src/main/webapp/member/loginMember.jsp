<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:include page="../static/menu.jsp"/>
 	<div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		  <h1 class="display-5 fw-bold">로그인</h1>
		  <p class="col-md-8 fs-4">로그인 해 주세요.</p>
		</div>
	  </div>
	  
	  <%
	  	String error = request.getParameter("error");
	  	
	  	if (error != null) {
	  		out.println("<div class='alert alert-danger'>");
	  		out.println("아이디와비밀번호를확인해주세요");
	  		out.println("</div>");
	  		}
	  %>
	  <form class="form-signin" action="processLoginMember.jsp" method="post">
	  	<div class="form-group">
	  		<label for="inputUserName" class="sr-only">User Name</label> 
	  		<input type="text" class="form-control" placeholder="ID" name='id' required autofocus>
	  	</div>
	  	<div class="form-group">
	  		<label for="inputUserName" class="sr-only">password</label> 
	  		<input type="text" class="form-control" placeholder="password" name='password' required>
	  	</div>
	  	<button class="btn btn btn-lg btn-success btn-block mt-2" type="submit">로그인</button>
	  </form>
	  

</body>
</html>
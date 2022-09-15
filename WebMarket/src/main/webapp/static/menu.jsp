<!--ë¶í¸ì¤í¸ë©
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
-->
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<link rel="stylesheet" href="./../resources/css/bootstrap.min.css" />
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="../welcome.jsp">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
      	<c:choose>
      		<c:when test="${empty sessionId}">
        <a class="nav-link active" aria-current="page" href="<c:url value="/member/loginMember.jsp" />">Login</a>
        <a class="nav-link active" aria-current="page" href="<c:url value="/member/addMember.jsp" />">회원가입</a>
        </c:when>
        <c:otherwise>
        <p style="padding-top: 7px; color:"white">[<%=sessionId%>님]</p>
        <a class="nav-link active" aria-current="page" href="<c:url value="/member/logoutMember.jsp" />">Logout</a>
        <a class="nav-link active" aria-current="page" href="<c:url value="/member/updateMember.jsp" />">회원수정</a>
        </c:otherwise>
        </c:choose>
        <a class="nav-link" href="./products.jsp">Products</a>
        <a class="nav-link" href="./addProduct.jsp">Add Product</a>
        <a class="nav-link" href="./editProduct.jsp?edit=update">상품 수정</a>
        <a class="nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a>
        <a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a>
      </div>
    </div>
  </div>
</nav>
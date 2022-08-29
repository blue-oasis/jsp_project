<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head> <!--부트스트랩 딜리버리 코드 menu에 통합-->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

	<meta charset="UTF-8">

<title>welcome</title>
</head>
<body>
	<%-- herder(nav) --%>
	<%@ include file="static/menu.jsp" %>

	<%! String greeting = "Welcome to Web Shopping mall";
		String tagline = "Welcome to Web Market!";
	%>

	<div class="p-5 mb-4 bg-light rounded-3">
		<div class="container-fluid py-5">
		  <h1 class="display-5 fw-bold"><%= greeting %></h1>
		  <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p>
		</div>
	  </div>

	<%@ page import="java.util.Date"%>
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3>
					<%= tagline %>
				</h3>
				<%
					response.setIntHeader("Refresh", 5);
					Date day = new java.util.Date();
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					if(hour / 12 == 0) {
						am_pm = "AM";
					} else {
						am_pm = "PM";
						hour = hour - 12;
					}
					String CT = hour + ":" + minute + ":" + second + " " + am_pm;
					out.println("현재 접속 시각: " + CT + "\n");
					%>
			</div>
			<hr>
		</div>
	</main>
	<%-- footer --%>
	<%@ include file="static/footer.jsp" %>

</body>
</html>
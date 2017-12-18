<%-- 
    Document   : index
    Created on : 18/12/2013, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>
<%@page import="java.util.*, java.net.URLEncoder"%>
<%
	Cookie lastVisit = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equalsIgnoreCase("last_visit")) {
				lastVisit = cookies[i];
				break;
			}
		}
	}
	
	if (null == lastVisit) {
		Date currentTime = new java.util.Date();
		lastVisit = new Cookie("last_visit", URLEncoder.encode( currentTime.toString(), "UTF-8" ));
		lastVisit.setMaxAge(1800);
		response.addCookie(lastVisit);
	}
	else {
		Date currentTime = new java.util.Date();
		lastVisit.setValue(URLEncoder.encode( currentTime.toString(), "UTF-8" ));
		lastVisit.setMaxAge(1800);
		response.addCookie(lastVisit);
	}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"
	import="org.elluck91.first.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Lukasz Juraszek">

<title>Login | Bloggr</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
				<a class="navbar-brand logo" href="index.jsp">Bloggr</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="blog.jsp">Blog</a></li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="about.jsp">About Us</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div class="container">

		<% if (request.getParameter("access") != null) {
                    if (request.getParameter("access").equals("denied")) {%>
		<div class="jumbotron hero-spacer">
			<h2 class="text-center text-danger">Access Denied !!!</h2>
		</div>
		<%}
                }%>

		<% if ((request.getParameter("access") == null) || request.getParameter("access").equals("denied") ) {
                	String csrf = "" + System.currentTimeMillis() + Math.random() * 10000000;
                	session.setAttribute("csrf", csrf);
                %>

		<div class="container center-block" style="width: 450px;">

			<form class="form-signin" action="./LoginAPI" method="POST"
				role="form">
				<br> <br>
				<h2 class="form-signin-heading">Please Login</h2>
				<br> <input name="txtUsername" type="text" class="form-control"
					placeholder="Username" required autofocus> <br> <input
					name="txtPassword" type="password" class="form-control"
					placeholder="Password" required> <br> <input
					type="hidden" name="csrftoken" value=<% out.print(csrf); %>>

				<button name="btnLogin" class="btn btn-lg btn-success btn-block"
					type="submit">Login</button>
				<br>
			</form>



			<hr>

		</div>
		<!-- /container -->

		<%}%>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Lukasz Juraszek 2017</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>

</body>
</html>


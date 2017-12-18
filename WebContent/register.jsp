<%-- 
    Document   : index
    Created on : 18/12/2013, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="org.elluck91.first.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Lukasz Juraszek">

<title>Register | Bloggr</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/modern-business.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>

<body>
	<%
	String csrf = "" + System.currentTimeMillis() + Math.random() * 10000000;
	session.setAttribute("csrf", csrf);
	%>

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
					<li><a href="login.jsp">Login</a></li>
					<li><a href="about.jsp">About Us</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<div class="container">
		<%if (request.getParameter("reg") != null) {
			if (request.getParameter("reg").equals("done")) {%>
		<div class="jumbotron hero-spacer">
			<h1>Registration Complete!</h1>
			<p>
				<a href="login.jsp" class="btn btn-primary btn-large">Login</a>
			</p>
		</div>

		<%}}%>
		<% if (request.getParameter("reg") == null || request.getParameter("reg").equals("duplicate")) {%>
				<%if (request.getParameter("reg") != null && request.getParameter("reg").equals("duplicate")) {%>
					<div class="jumbotron hero-spacer">
						<h2 class="text-center text-danger">User already exists. Select
							different username.</h2>
					</div>
				<%}%>
			<div class="container center-block" style="width: 450px;">
	
				<form class="form-signin" action="./RegisterAPI" method="POST"
					role="form">
					<br> <br>
					<h2 class="form-signin-heading">Please Register</h2>
					<br> <input name="txtUsername" type="text" class="form-control"
						placeholder="Username" required autofocus> <br> <input
						name="txtEmail" type="text" class="form-control"
						placeholder="Email address" required> <br> <input
						name="txtPassword" type="password" class="form-control"
						placeholder="Password" required> <br>
					<div class="g-recaptcha"
						data-sitekey="6LeSZD0UAAAAAHBRsGHAlKYmG69g-YUaHenJrGqx"
						data-callback="onSuccess"></div>
	
					<script>
		                    function onSuccess(){
		                        document.getElementById("button1").disabled = false;
		                       };
	                    </script>
					<br>
					<input type="hidden" name="csrftoken" value=<% out.print(csrf); %>>
					<button name="btnRegister" class="btn btn-lg btn-primary btn-block"
						type="submit" id="button1">Register</button>
					<br>
				</form>
	
			</div>
		<%}%>
		
		
		<!-- /container -->

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Lukasz Juraszek 2017 | <a href="privacy.jsp">Privacy Statement</a></p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- JavaScript -->
	<script>
		if (document.getElementById("button1") != null) {
			document.getElementById("button1").disabled = true;
		}
   	</script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>

</body>
</html>


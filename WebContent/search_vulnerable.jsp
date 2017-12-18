<%-- 
    Document   : index
    Created on : 12/15/2017, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
	import="org.elluck91.first.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Lukasz Juraszek">

<title>Search | Bloggr</title>

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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Demos<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="blog_vulnerable.jsp">SQL Injection</a></li>
							<li><a href="blog_vulnerable.jsp">Cross Site Scripting</a></li>
							<li><a href="cookie.jsp">Cookies</a></li>
							<li><a href="post.jsp?id=34">Session Management</a></li>
							<li><a href="crypto.html">Encryption</a></li>
						</ul></li>
					<li><a href="./LogoutAPI">Logout</a>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<br>
	<div class="container">
		<br> <br>
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-lg-9 col-md-9 col-xs-9 col-sm-9">

				<%
					DbManager db = new DbManager();
					String title = request.getParameter("q");
					List<Post> posts = db.SearchPostsInsecure(title, (String) session.getAttribute("userid"));
					for (Post post : posts) {
				%>
				<div class="jumbotron">
					<h2>
						<a href="#"><c:out value="<%=post.PostTitle%>"
								escapeXml="true" /></a>
					</h2>
					<img class="postimg"
						src="<c:out value='<%=post.PostImage%>' escapeXml='true' />" />
					<p>
						<c:out value="<%=post.PostDescription%>" escapeXml="true" />
					</p>
					<p>
						Author : <strong> <c:out value="<%=post.PostAuthor%>"
								escapeXml="true" /></strong>
					</p>
					<a href="./post.jsp?id=<%=post.ID%>" class="btn btn-primary">Read
						More...</a>
				</div>
				<hr />
				<%
					}
				%>

			</div>


			<div class="col-lg-3 col-md-3 col-xs-3 col-sm-3 sidebar-offcanvas"
				id="sidebar" role="navigation">
				<br> <a href="./newpost.jsp" class="btn btn-success">Write
					New Post!</a> <br> <br>
				<form action="./search_vulnerable.jsp" method="GET">
					<label for="q">Search :</label> <input class="form-control"
						type="text" name="q" placeholder="Search..." id="q"> <br>
					<input type="submit" value="Search" class="btn btn-primary">
				</form>
				<br> <br>
				<div class="well sidebar-nav">
					<ul class="nav">
						<li><b>Categories</b></li>
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Programming</a></li>
						<li><a href="#">Web</a></li>
						<li><b>Social Links</b></li>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Youtube</a></li>
					</ul>

				</div>
				<!--/.well -->
				<a class="twitter-timeline" data-lang="en" data-width="250"
					data-height="480"
					href="https://twitter.com/TwitterDev/timelines/539487832448843776?ref_src=twsrc%5Etfw">National
					Park Tweets - Curated tweets by TwitterDev</a>
				<script async src="https://platform.twitter.com/widgets.js"
					charset="utf-8"></script>


			</div>
			<!--/span-->
		</div>



		<hr>

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
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/modern-business.js"></script>

</body>
</html>


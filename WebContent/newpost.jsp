<%-- 
    Document   : index
    Created on : 18/12/2013, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="org.elluck91.first.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Lukasz Juraszek">

        <title>New Post | Bloggr</title>

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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
                    <a class="navbar-brand logo" href="index.jsp">Bloggr</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                        <li class="dropdown"><a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">Demos<b class="caret"></b></a>
							<ul class = "dropdown-menu">
			               <li><a href = "blog_vulnerable.jsp">SQL Injection</a></li>
			               <li><a href = "blog_vulnerable.jsp">Cross Site Scripting</a></li>
			               <li><a href = "cookie.jsp">Cookies</a></li>
			               <li><a href = "post.jsp?id=34">Session Management</a></li>
			               <li><a href = "crypto.html">Encryption</a></li>
			               </ul>
			            </li>
                        <li><a href="./LogoutAPI">Logout</a>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav>

        <div class="container">


            <div class="container center-block" >

                <form class="form-signin" action="./InsertAPI" method="POST" role="form">
                    <br>
                    <br>
                    
                    <h2 class="form-signin-heading">Write a new Post : </h2>
                    <br>
                    <p><strong>Title : </strong></p>
                    <input name="txtTitle" type="text" class="form-control"   required autofocus>
                    <br>
                    <p><strong>Description: </strong></p>
                    <input name="txtDescription" type="text" class="form-control"  required >
                    <br>
                    <p><strong>Image URL : </strong></p>
                    <input name="txtImage" type="text" class="form-control"   required >
                    <br>
                    <p><strong>Content :</strong></p>
                    <textarea name="txtContent" style="resize: both;" class="form-control" rows="15" cols="8" required ></textarea>
                    <br>
                    
                    <input name="txtAuthor" type="hidden" value="<c:out value='<%=session.getAttribute("userid")%>' escapeXml="true" />">
                    <br>
                    <input type="hidden" name="safe" value="yes">
                    <button name="btnUpdate" class="btn btn-lg btn-primary btn-block" type="submit">Publish</button>
                    <br>
                </form>



                <hr>

            </div> <!-- /container --> 


            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Lukasz Juraszek 2017 | <a href="privacy.jsp">Privacy Statement</a></p>
                    </div>
                </div>
            </footer>

        </div><!-- /.container -->

        <!-- JavaScript -->
        <script src="js/jquery-1.10.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/modern-business.js"></script>

    </body>
</html>


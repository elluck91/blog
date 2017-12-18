<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="org.elluck91.first.*" %>
<% DbManager db = new DbManager();
    Post post;
    int postID = Integer.parseInt(request.getParameter("id").toString());
    post = db.GetPost(postID);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Lukasz Juraszek">

        <title><c:out value="${post.PostTitle}"/> | Bloggr</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Add custom CSS here -->
        <link href="css/modern-business.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prism.css" rel="stylesheet">
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
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="./LogoutAPI">Logout</a>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav>

        <br>
        <div class="container">
            <br>
            <br>
            <div class="row row-offcanvas row-offcanvas-right">
                <div class="col-lg-9 col-md-9 col-xs-9 col-sm-9">


                    <div class="jumbotron">
                        <h2><a href="#"><c:out value="<%=post.PostTitle%>"/></a></h2>
                        <img class="postimg" src="<c:out value="<%= post.PostImage%>"/>" title="Image Title !!!" />
                        <c:out value="<%= post.PostContent%>"/>

                        <br>
                        
                    </div>
                        <p> This Article Written By : <strong> <c:out value="<%= post.PostAuthor%>"/> </strong> </p>
                        <br>
                         <a href="./DeleteAPI?id=<%= post.ID%>" class="btn btn-danger" id="delete">Delete This Post!</a>
                         <a href="./update.jsp?id=<%= post.ID%>" class="btn btn-success" id="update">Update This Post!</a>
                    <hr />


                </div>


                <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
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
                   		<a class="twitter-timeline" data-lang="en" data-width="250" data-height="480" href="https://twitter.com/TwitterDev/timelines/539487832448843776?ref_src=twsrc%5Etfw">National Park Tweets - Curated tweets by TwitterDev</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


                </div>
                <!--/span-->
            </div>



            <hr>

            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Lukasz Juraszek 2017</p>
                    </div>
                </div>
            </footer>

        </div><!-- /.container -->

        <!-- JavaScript -->
        <script>
        	var auth = '<%= post.PostAuthor%>'
        	var usrRole = '<%=session.getAttribute("userRole")%>'
        	var usr = '<%=session.getAttribute("userid")%>'
        	var del = document.getElementById("delete");
        	var update = document.getElementById("update");

        	if(usr != auth && usr != "admin") {
        		del.classList.add("disabled");
        		update.classList.add("disabled");
        	}
        	
        </script>
        
        <script src="js/jquery-1.10.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/modern-business.js"></script>
        <script src="js/prism.js"></script>
    </body>
</html>


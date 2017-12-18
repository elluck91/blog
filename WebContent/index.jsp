<%-- 
    Document   : index
    Created on : 18/12/2013, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="org.elluck91.first.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Lukasz Juraszek">

        <title>Bloggr</title>

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
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="register.jsp">Register</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav>

        <div class="carousel" style="height:100%">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="fill" style="background-image:url('img/img.jpg');"></div>
                    <div class="carousel-caption">
                        <h1>Welcome to Bloggr</h1>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('img/img.jpg');"></div>
                    <div class="carousel-caption">
                        <h1>Read Blogs Of Others</h1>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('img/img.jpg');"></div>
                    <div class="carousel-caption">
                        <h1>Write and Publish Your Own Content</h1>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>
        </div>

        <div class="container">

            <hr>

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


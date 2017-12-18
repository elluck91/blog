<%-- 
    Document   : index
    Created on : 18/12/2013, 07:58:21 ص
    Author     : Lukasz Juraszek
--%>
<%@ page language="java" contentType="text/html; 
charset=utf-8" pageEncoding="utf-8" isELIgnored="false" import="org.elluck91.first.*"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%
String userid = (String)session.getAttribute("userid");
if(userid == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>
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
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="./LogoutAPI">Logout</a>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav>

        <div class="container">
            <br>
            <br>
            <div class="row row-offcanvas row-offcanvas-right">
                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
				<h1>Privacy Policy</h1>
				<p>Last updated: December 18, 2017</p>
				<br>
				<p>Bloggr ("us", "we", or "our") operates the ec2-34-209-69-148.us-west-2.compute.amazonaws.com website (the "Service").</p>
				<br>
				<p>This page informs you of our policies regarding the collection, use and disclosure of Personal Information when you use our Service.</p>
				<br>
				<p>We will not use or share your information with anyone except as described in this Privacy Policy. Privacy Policy from TermsFeed for Bloggr.</p>
				<br>
				<p>We use your Personal Information for providing and improving the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible at ec2-34-209-69-148.us-west-2.compute.amazonaws.com</p>
				<br>
				<h2>Information Collection And Use</h2>
				<br>
				<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally identifiable information may include, but is not limited to, your name, other information ("Personal Information").</p>
				<br>
				<h2>Log Data</h2>
                <br>
                <p>We collect information that your browser sends whenever you visit our Service ("Log Data"). This Log Data may include information such as your computer's Internet Protocol ("IP") address, browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages and other statistics.</p>
                <br>
                <h2>Cookies</h2>
                <p>Cookies are files with small amount of data, which may include an anonymous unique identifier. Cookies are sent to your browser from a web site and stored on your computer's hard drive. We use "cookies" to collect information. You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>
				<br>
				<h2>Service Providers</h2>
				<br>
				<p>We may employ third party companies and individuals to facilitate our Service, to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>
				<br>
				<p>These third parties have access to your Personal Information only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>
				<br>
				<h2>Security</h2>
				<br>
				<p>The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>
				<br>
				<h2>Links To Other Sites</h2>
				<br>
				<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party's site. We strongly advise you to review the Privacy Policy of every site you visit.</p>
				<br>
				<p>We have no control over, and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>
				<br>
				<h2>Children's Privacy</h2>
				<br>
				<p>Our Service does not address anyone under the age of 13 ("Children").</p>
				<br>
				<p>We do not knowingly collect personally identifiable information from children under 13. If you are a parent or guardian and you are aware that your Children has provided us with Personal Information, please contact us. If we discover that a Children under 13 has provided us with Personal Information, we will delete such information from our servers immediately.</p>
				<br>
				<h2>Changes To This Privacy Policy</h2>
				<br>
				<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>
				<br>
				<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>
				<br>
				<h2>Contact Us</h2>
				<br>
				<p>If you have any questions about this Privacy Policy, please contact us.</p>
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

        </div><!-- /.container -->

        <!-- JavaScript -->
        <script src="js/jquery-1.10.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/modern-business.js"></script>
        
    </body>
</html>


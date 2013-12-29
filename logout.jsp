<%-- 
    Document   : logout
    Created on : Jul 11, 2013, 12:25:02 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Redirecting.. | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/valid.js"></script>
</head>
<body>
<div id="wrapper">
    
    <div id="page" class="container">
        <div id="content">
                <%  session.invalidate();
                %>
              <div id="p1">Logout Successful!! :)</div><br>
              <br><br>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                            <br>
              <div id="p3"><br>Redirecting,Please wait!</div>
              <script>
                    setTimeout("location.href='login.html'",3000);
              </script>
              </div>
        </div>
    </div>
</body>
</html>

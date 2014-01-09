<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Control Panel | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/main.js"></script>
-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>

<!-- Custom jquery scripts -->
<script src="js/custom_jquery.js" type="text/javascript"></script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>


</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="menu" class="container">
			<ul>
				<li><a href="index.html">Homepage</a></li>
                                <li class="current_page_item"><a href="#">Control Panel</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="faq.html">FAQs</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Online Food Ordering Portal </a></h1>
			</div>
			<div id="banner"> <a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a> </div>
		</div>
	</div>
	<div id="page" class="container">
            <div class="right">
            <p>Welcome,<strong> <%=pageContext.getAttribute("F1", pageContext.APPLICATION_SCOPE)%> <%=pageContext.getAttribute("F2", pageContext.APPLICATION_SCOPE)%></strong> <a href="logout.jsp">[logout]</a></p>
            </div>
            <div id="content">
                  
                  <%!       Connection con=null;    
                            String orderno=null;
                            Statement st=null;
                            ResultSet rs=null;
                            String user=null;
            
                   %>                 
<% 
       Class.forName("com.mysql.jdbc.Driver");
       con =DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
       st= con.createStatement();
       rs=st.executeQuery("select * from orderlist");
         
%> 
<br>
    	<div id="forgotbox">
                  <form name="form1" action="check.jsp">
                      <table width="472" height="270" align="center" cellpadding='5' cellspacing='0'>
                          <tr bgcolor="#ffc31f" style="color: #ffffff; text-transform: uppercase; letter-spacing: 1px;">
                        <th width="131">Order No.</th>
                        <th width="175">Food Item</th>
                        <th width="95">Quantity</th>
                        <th width="106">Status</th>
                        </tr>
        <%   while(rs.next())
            {
            %>
                        <tr align="center">
                        <td><%= rs.getString("order_id") %></td>
                        <td><%= rs.getString("fitem") %></td>
                        <td><%= rs.getString("quantity") %></td>
                        <td><%= rs.getString("fstats") %></td>
                        </tr>
            <% 
            }
       %>
        <tr><td colspan="4" align="center"><br><br>Enter Order No.: <input type="text" name="order" id="order"></td></tr>
        <tr><td colspan="4" align="center"><br><br><input type="submit" onclick="return order(form1);" value=" Click To Change Status "></td></tr>
        </table>
        </form>				
    </div>
  </div>
	</div>
	<div id="copyright">
	<p>Copyright (c) 2013. All rights reserved. | Design by NIKHIL JAIN.</p>
		<ul class="contact">
			<li><a href="#" class="icon icon-twitter"><span>Twitter</span></a></li>
			<li><a href="#" class="icon icon-facebook"><span></span></a></li>
			<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
			<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
			<li><a href="#" class="icon icon-rss"><span>Pinterest</span></a></li>
		</ul>
	</div>

</body>
</html>

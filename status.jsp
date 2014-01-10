<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Status | Online Food Ordering Portal</title>
<%@page import="java.util.*,java.sql.*,java.io.*" %>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<%!     Connection con=null;    
            String orderno=null;
            Statement st=null;
            ResultSet rs=null;
            String user=null;
            
%>
<body>
<%      user=(pageContext.getAttribute("UN", pageContext.APPLICATION_SCOPE)).toString();
        orderno=request.getParameter("orderno");
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
        st= con.createStatement();
        rs=st.executeQuery("select * from orderlist where user='"+user+"'");
%>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="menu" class="container">
			<ul>
				<li><a href="index.html">Homepage</a></li>
				<li class="current_page_item"><a href="#">Status</a></li>
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
		<div id="content">
		<br><br>
                    <center><img src="images/current_status.jpg"></center><br><br>
                    <div><table width="472" height="146" align="center" cellpadding='5' cellspacing='0'>
        <tr bgcolor="71afc1">
               <th width="111">Order No.</th>
               <th width="175">Food Item</th>
               <th width="95">Quantity</th>
               <th width="106">Status</th>
        </tr>
        <%   while(rs.next())
            {
        %>
        <tr align="center" bgcolor="dfe4f4">
      <td><%= rs.getString("order_id") %></td>
      <td><%= rs.getString("fitem") %></td>
      <td><%= rs.getString("quantity") %></td>
      <td><%= rs.getString("fstats") %></td>
        </tr>
        <%  }
        %>
        <tr><td colspan="4" align="center"><br><br><input type="button" onclick="document.location='welcome.jsp'" value="   Return to Menu   "></td></tr>
        </table>
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

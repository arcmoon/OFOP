<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="java.sql.*,javax.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Payment | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/valid.js"></script>
</head>
<body>
    <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        PreparedStatement ps=null;
        PreparedStatement ps1=null;
        PreparedStatement ps2=null;
    %>
<%      int a[]=new int[26];
        a[0] = 0;
        a[1] = 70;
        a[2] = 110;
        a[3] = 60;
        a[4] = 140;
        a[5] = 90;
        a[6] = 75;
        a[7] = 80;
        a[8] = 30;
        a[9] = 50;
        a[10] =30;
        a[11] =45;
        a[12] =70;
        a[13] =60;
        a[14] =25;
        a[15] =40;
        a[16] =95;
        a[17] =20;
        a[18] =120;
        a[19] =80;
        a[20] =150;
        a[21] = 60;
        a[22] = 80;
        a[23] = 40;
        a[24] = 85;
        a[25] = 90;
        String sup[]=new String[26];
        sup[0] = "";
        sup[1] = "Bihari Kabab";
        sup[2] = "Fish Biryani";
        sup[3] = "Vegetable Biryani";
        sup[4] = "Shrimp Biryani";
        sup[5] = "Cheese Kabab";
        sup[6] = "Triple Sundae";
        sup[7] = "Choco Trofle Cake";
        sup[8] = "Sandesh";
        sup[9] = "Mysore Pak";
        sup[10] = "ShriKhand";
        sup[11] = "French Fries";
        sup[12] = "Manchurin";
        sup[13] = "Spring Rolls";
        sup[14] = "Burger";
        sup[15] = "Hard Shell Tacco";
        sup[16] = "Shahi Paneer";
        sup[17] = "Lachha Parantha";
        sup[18] = "Rogan Josh";
        sup[19] = "Chola Batura";
        sup[20] = "Tandoori Chicken";
        sup[21] = "Sambhar Vada";
        sup[22] = "Dosa";
        sup[23] = "Idli";
        sup[24] = "Almond Payasam";
        sup[25] = "Avial";
            
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
        st= con.createStatement();
        
        
            String line1=null;
            String f=null;
            String l=null;
            String dname=null;
            String mob=null;
            String user=null;
            String am=request.getParameter("addressmode");
            String item=request.getParameter("item");
            String quan=request.getParameter("number_of_order");
            
            if(am.equalsIgnoreCase("New Address"))
            {   
                dname=request.getParameter("dname");
                mob=request.getParameter("dmob");
                line1=request.getParameter("address1");
            }
            else
            {   user=(pageContext.getAttribute("UN", pageContext.APPLICATION_SCOPE)).toString();
                rs=st.executeQuery("select * from registration where username='"+user+"'");
                while(rs.next())
                {
                        line1=rs.getString("address");
                        mob=rs.getString("mobile");
                        f=rs.getString("fname");
                        l=rs.getString("lname");
                }
                dname=f+" "+l;
            }
            
            System.out.println(dname);
            System.out.println(mob);
            System.out.println(line1);
            int index=Integer.parseInt(item);
            int totalquan=Integer.parseInt(quan);
            int temptotal=a[index]*totalquan;
            double service=(temptotal*12.5)/100;
            double amount=temptotal+service;
            
            pageContext.setAttribute("PR", a[index] , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("TT", temptotal , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("SR", service , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("FI", sup[index] , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("NO", quan , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("TA", amount , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("FN", dname , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("L1", line1 , pageContext.APPLICATION_SCOPE);
            pageContext.setAttribute("MB", mob , pageContext.APPLICATION_SCOPE);
            
%>
     
<div id="wrapper">
	<div id="header-wrapper">
		<div id="menu" class="container">
			<ul>
				<li><a href="index.html">Homepage</a></li>
				<li class="current_page_item"><a href="#">Payment</a></li>
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
            <form action="pay_success.jsp" name="form1" method="post">
		<div id="content">
                    <center><img src="images/sub_total.jpg"></center>
                    <table align="center" cellpadding='5' cellspacing='0' border="1" bordercolor="ffffff" width="600px">
                        <tr id="p7" bgcolor="71afc1"><th>ITEMS</th><th>QUANTITY</th><th>RATE</th><th>AMOUNT(Rs.)</th></tr>
                        <tr bgcolor="dfe4f4"><td id="p8"><%=sup[index]%></td><td id="p8"><%=totalquan%></td><td id="p8"><%=a[index]%></td><td id="p8"><%=temptotal%></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p8">Service Charges</td><td></td><td id="p8">@12.5%</td><td id="p8"><%=service%></td></tr>
                        <tr bgcolor="dfe4f4"><td class="bottom" id="p8">Delivery Charges</td><td class="bottom"></td><td class="bottom" id="p8">FREE</td><td class="bottom" id="p8">0</td></tr>
                        <tr bgcolor="b1bee4"><td class="bottom" id="p7">Total</td><td class="bottom"></td><td class="bottom"></td><td class="bottom" id="p7">(+) <%=amount%></td></tr>    
                        <br><br> 
                    </table>
                  <br><br><br><br>
                  <center><img src="images/payment_mode.jpg"></center>
                  <br><div id="p6"><center><input type="radio" name="myradio" value="Credit Card" checked>Credit Card&nbsp;&nbsp;&nbsp;<input type ="radio" name="myradio" value="Debit Card">Debit Card&nbsp;&nbsp;&nbsp;<input type="radio" name="myradio" value="Cash on Delivery">Payment on Delivery</center></div>
                  <br><br>
                          
                  <table width="517" height="218" align="center">
                        <tr><td width="193" height="31" id="p2">Name:</td><td>&nbsp;&nbsp;</td><td width="312"><input type="text" name="n1"></td></tr>
                        <tr><td id="p2" height="30">Expiry Date:</td><td>&nbsp;&nbsp;</td><td><input type="text" style="width:20px;" name="mm"> MM&nbsp;&nbsp;&nbsp;<input type="text" style="width:20px;" name="yy"> YY</td></tr>
                        <tr><td id="p2" height="30">CVV Number:</td><td>&nbsp;&nbsp;</td><td><input type="text" style="width:50px;" name="c1"/></td></tr>
                        <tr><td id="p2" height="32">Pin:</td><td>&nbsp;&nbsp;</td><td><input type="password" style="width:50px;" name="p1"/></td></tr>
                        <tr><td id="p2" height="29">Bank:</td><td>&nbsp;&nbsp;</td><td><select name="s"><option value="">Select Bank</option>
                                      <option value="sbi">State Bank Of India</option>
                                      <option value="icici">ICICI Bank</option>
                                      <option value="hdfc">HDFC Bank</option>   
                                      <option value="bob">Bank Of Baroda</option> 
                                      </select></td></tr>
                        <tr><td colspan="3" align="center"><br><input type="submit" onclick="return valid(form1);" value="   PAY NOW   "/><input type="button" onclick="window.history.go(-1)" value="   BACK   "/></td></tr>
                   </table>
		</div>
            </form>
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

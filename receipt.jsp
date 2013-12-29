<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="java.io.*,java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Receipt | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="wrapper">
    <div id="header-wrapper">
        <div id="menu" class="container">
            <ul>
                <li><a href="index.html">Homepage</a></li>
                <li class="current_page_item"><a href="#">Receipt</a></li>
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
               <%  Date createTime=new Date();
                    %>
                     <a href="welcome.jsp" style="margin-left:30px; text-align:left; font-weight:bold; text-decoration:none;">MENU PAGE</a><font style="right:30px; position: absolute; font-weight:bold">WELCOME | <a href="logout.jsp" style="text-decoration:none;">LOGOUT</a></font>
                     <br><br><br>
                    <table width="800" align="center" cellspacing="0">
                        <tr bgcolor="71afc1"><td height="30" colspan="5"><br><div align="center" style="font-size: 36px; color: #ffffff; "><strong>INDIAN SPICE</strong></div></td></tr>
                        <tr bgcolor="71afc1"><td colspan="5"><br></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p8" colspan="5"><br>A-24,C-Block</td></tr>
                        <tr bgcolor="dfe4f4"><td id="p8" colspan="5">Near Radha Krishna Mandir</td></tr>
                        <tr bgcolor="dfe4f4"><td colspan="5" id="p8">Mansoravar,Jaipur(Rajasthan), PinCode: 302020</td></tr>
                        <tr bgcolor="dfe4f4"><td colspan="5" id="p8"><br></td></tr>
                        <tr bgcolor="b1bee4"><td id="p7" width="145"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order No.: </td><td width="290"><br><%=pageContext.getAttribute("OD", pageContext.APPLICATION_SCOPE)%></td><td colspan="2"></td><td width="335"><br><div align="right">DATE- <%=createTime%>&nbsp;&nbsp;&nbsp;</div></td></tr>
                        <tr bgcolor="b1bee4"><td id="p7" colspan="5"><br></td></tr>
                        <tr bgcolor="71afc1"><td colspan="5"><br><div align="center" style="font-size: 27px; color: #ffffff; ">DELIVERY DETAILS</div></td></tr>
                        <tr bgcolor="71afc1"><td colspan="5"><br></td></tr></table>
                        <table width="800" align="center" cellpadding="5" cellspacing="0">
                        <tr bgcolor="dfe4f4"><td colspan="5"><br></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p7" width="130"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;NAME:</div></td><td id="p8" width="193"><div align="left"><%=pageContext.getAttribute("FN", pageContext.APPLICATION_SCOPE)%></div></td><td width="15"></td><td id="p7" width="109"><div align="left">ADDRESS:</div></td><td id="p8"><div align="left"><%=pageContext.getAttribute("L1", pageContext.APPLICATION_SCOPE)%></div></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p7"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;MOBILE NO.:</div></td><td id="p8"><div align="left"><%=pageContext.getAttribute("MB", pageContext.APPLICATION_SCOPE)%></div></td><td></td><td width="109"></td><td><div align="left"></div></td></tr>
                        <tr bgcolor="dfe4f4"><td colspan="5"><br></td></tr>
                        <tr bgcolor="71afc1"><td colspan="5"><br><div align="center" style="font-size: 27px; color: #ffffff; ">ORDER DETAILS</div></td></tr>
                        <tr bgcolor="71afc1"><td colspan="5"><br></td></tr></table>
                        <table width="800" cellpadding="8" align="center" cellspacing="0">
                        <tr bgcolor="b1bee4"><th width="273" height="45" class="bottom" id="p7">ITEMS</th><th width="131" class="bottom" id="p7">QUANTITY</th><th width="117" class="bottom" id="p7">RATE</th><th width="237" class="bottom" id="p7">AMOUNT(Rs.)</th></tr>
                        <tr bgcolor="dfe4f4"><td id="p8"><%=pageContext.getAttribute("FI", pageContext.APPLICATION_SCOPE)%></td><td id="p8"><%=pageContext.getAttribute("NO", pageContext.APPLICATION_SCOPE)%></td><td id="p8"><%=pageContext.getAttribute("PR", pageContext.APPLICATION_SCOPE)%></td><td id="p8"><%=pageContext.getAttribute("TT", pageContext.APPLICATION_SCOPE)%></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p8">Service Charges</td><td></td><td id="p8">@12.5%</td><td id="p8"><%=pageContext.getAttribute("SR", pageContext.APPLICATION_SCOPE)%></td></tr>
                        <tr bgcolor="dfe4f4"><td id="p8">Delivery Charges</td><td></td><td id="p8">FREE</td><td id="p8">0</td></tr>
                        <tr bgcolor="dfe4f4"><td colspan="4"><br></td></tr>
                        </table>
                        
                        <table width="800" align="center" cellspacing="0">
                        <tr bgcolor="71afc1"><td colspan="4"><br><div align="center" style="font-size: 27px; color: #ffffff; ">TOTAL AMOUNT</div></td></tr>
                        <tr bgcolor="71afc1"><td colspan="4"><br></td></tr>
                        <tr bgcolor="b1bee4"><td colspan="4"><br></td></tr>
                        <tr bgcolor="b1bee4"><td width="275" id="p7">Total</td><td width="163"></td><td width="93"></td><td width="263" id="p7">(+) <%=pageContext.getAttribute("TA", pageContext.APPLICATION_SCOPE)%></td></tr>
                        <tr bgcolor="b1bee4"><td colspan="4"><br></td></tr>
                        <tr bgcolor="71afc1"><td colspan="4"  id="p7"><br>&nbsp;&nbsp;&nbsp;&nbsp;Payment Mode: <%=pageContext.getAttribute("MP", pageContext.APPLICATION_SCOPE)%></td></tr>
                        <tr bgcolor="71afc1"><td height="150px" colspan="4"></td></tr>
                        </table> 

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

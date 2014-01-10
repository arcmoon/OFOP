<%-- 
    Document   : welcome
    Created on : Jul 11, 2013, 12:21:44 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/dropdown.js"></script>
</head>
<body>
<div id="wrapper">
    <div id="header-wrapper">
        <div id="menu" class="container">
            <ul>
                <li><a href="index.html">Homepage</a></li>
                <li class="current_page_item"><a href="#">Menu</a></li>
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
            <p>Welcome,<strong> <%=pageContext.getAttribute("F1", pageContext.APPLICATION_SCOPE)%> <%=pageContext.getAttribute("F2", pageContext.APPLICATION_SCOPE)%></strong> <a href="status.jsp">[Orders Status]</a> <a href="logout.jsp">[logout]</a></p>
            </div>
        <div id="content">
            <form name="form1" action="payment.jsp" method="post">

                    <br><br><br><p align="left"><sup>*</sup>All Fields are Mandantory!</p>           
                    <br><center><img src="images/order.jpg" alt="order"></center>
                    <center><table height="200" width="550" bgcolor="dfe4f4">
                    <tr><td id="bg"><table width="399" height="151" align="center">
                    <tr><td width="208">CUISINE<sup>*</sup>: </td><td><select name ="cuisine" id = "cuisine" onchange = "updateunit(this);">
                        <option value="">  Select a Cuisine  </option>
                        <option value="1">Biryani & Kabab</option>
                        <option value="2">Desserts</option>
                        <option value="3">Fast Food</option>
                        <option value="4">North-Indian</option>
                        <option value="5">South-Indian</option>
                        </select></td></tr>
                    <tr><td>FOOD ITEM<sup>*</sup>: </td><td><select name ="item" id = "item" onchange="pricelist();">
                            <option value="">  Select an Food Item  </option></select></td></tr>
                    <tr><td>PRICE : </td><td>Rs. <label><span id="pane2"></span></label></td></tr>
                    <tr><td>NUMBER OF ORDERS : </td><td><select name="number_of_order" id="no">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        </select></td></tr>    
                    </table></center>
                        </td></tr></table></center>

                    <br><br><br><center><img src="images/delivery.jpg" alt="delivery"></center>
                    <br><div id="p6"><center><input type="radio" name="addressmode" value="New Address" checked>New Delivery Address&nbsp;&nbsp;&nbsp;<input type ="radio" name="addressmode" value="Old Address">Registered Address</center></div>
                  <br><br>
              
                    <center><table height="300" width="550" bgcolor="dfe4f4">
                    <tr><td id="bg"><table width="418" height="257" align="center" >
                         <tr><td width="156">FULL NAME<sup>*</sup>:</td><td width="250"><input name="dname" type="text" id="dname"></td></tr>
                         <tr><td>ADDRESS<sup>*</sup>:</td><td><textarea name="address1" rows="4"></textarea></td></tr>
                         <tr><td>MOBILE NO.<sup>*</sup>:</td><td><input type="text" name="dmob" id="dmob"></td></tr>
                         <tr><td height="100" colspan="2" align="center"><br><br><input type="reset" value="   RESET  "></td></tr>
                         
                    </table></center>
                        </td></tr></table></center><br>
                    <p align="right" style="margin-right:100px;"><input type="submit" onclick="return valid(form1)" value="   PROCEED TO PAY  "></p>
                 </form>
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


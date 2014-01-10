<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="java.sql.*,javax.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Redirecting.. | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <%! 
	Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        PreparedStatement ps=null;
        PreparedStatement ps1=null;
        PreparedStatement ps2=null;
        String od=null;
	String mop=null;
        String name=null;
        String cvv=null;
	String m=null;
        String y=null;
        String pin=null;
	String amt=null;
        String stas=null;
        String bank=null;
        String cmd=null;
        String fitem=null;
        String quan=null;
        String tamt=null;
        String fname=null;
        String l1=null;
        String mob=null;
        String Status="pending";
        String user=null;
     %>
     <%        fitem=(pageContext.getAttribute("FI", pageContext.APPLICATION_SCOPE)).toString();
               quan=(pageContext.getAttribute("NO", pageContext.APPLICATION_SCOPE)).toString();
               tamt=(pageContext.getAttribute("TA", pageContext.APPLICATION_SCOPE)).toString();
               fname=(pageContext.getAttribute("FN", pageContext.APPLICATION_SCOPE)).toString();
               l1=(pageContext.getAttribute("L1", pageContext.APPLICATION_SCOPE)).toString();
               mob=(pageContext.getAttribute("MB", pageContext.APPLICATION_SCOPE)).toString();
               user=(pageContext.getAttribute("UN", pageContext.APPLICATION_SCOPE)).toString();
               mop=request.getParameter("myradio");
               pageContext.setAttribute("MP",mop, pageContext.APPLICATION_SCOPE);
               name=request.getParameter("n1");
               cvv=request.getParameter("c1");
               m=request.getParameter("mm");
               y=request.getParameter("yy");
               pin=request.getParameter("p1");
               bank=request.getParameter("s");
               
                try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
                st= con.createStatement();
                rs=st.executeQuery("SELECT * from orderlist order by order_id DESC limit 1");
                
                if(rs.next())
                {   Integer i=(rs.getInt(1))+1;
                    System.out.println(i);
                    od=i.toString();
                  
                }
                else
                {   od="1";
                                                                         
                } 
               pageContext.setAttribute("OD",od, pageContext.APPLICATION_SCOPE);
               if((mop.equalsIgnoreCase("Credit Card"))||(mop.equalsIgnoreCase("Debit Card")))
                 {stas="recieved";
                 }
                if(mop.equalsIgnoreCase("Cash on Delivery"))
                 {stas="pending";
                 }                
                
                ps=con.prepareStatement("insert into order_payment values (?,?,?,?,?,?,?,?,?,?)");
                 ps.setString(1,od);
                 ps.setString(2,mop);
                 ps.setString(3,name);
                 ps.setString(4,cvv);
                 ps.setString(5,m);
                 ps.setString(6,y);
                 ps.setString(7,pin);
                 ps.setString(8,tamt);
                 ps.setString(9,stas);
                 ps.setString(10,bank);
                 int i=ps.executeUpdate();
                 
                 ps1=con.prepareStatement("insert into delivery values (?,?,?,?)");
                 ps1.setString(1,od);
                 ps1.setString(2,fname);
                 ps1.setString(3,l1);
                 ps1.setString(4,mob);
                 int j=ps1.executeUpdate();
                 
                 ps2=con.prepareStatement("insert into orderlist values (?,?,?,?,?,?)");
                 ps2.setString(1,od);
                 ps2.setString(2,fitem);
                 ps2.setString(3,quan);
                 ps2.setString(4,tamt);
                 ps2.setString(5,Status);
                 ps2.setString(6,user);
                 int k=ps2.executeUpdate();
            }
            catch(Exception e)
            {
            }                       
 %> 
<div id="wrapper">
<div id="page" class="container">
		<div id="content">
			<% if((mop.equalsIgnoreCase("Credit Card"))||(mop.equalsIgnoreCase("Debit Card")))
                 { %>
                     <div id="p1">Payment Successful!! :)</div>
                     <br><br>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                            <br>
                     <div id="p3"><br>Generating Receipt, Please wait!</div>
              <% 
               }
               else
               { 
              %>
                     <div id="p1">Order Successful!! :)</div>
                     <br><br>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                            <br>
                     <div id="p3"><br>Generating Receipt, Please wait!</div>
              <%
               }
               %>
              
              <script>
                    setTimeout("location.href='receipt.jsp'",3500);
              </script>
	

		</div>
	</div>
</div>

</body>
</html>



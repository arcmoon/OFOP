<%-- 
    Document   : signup
    Created on : Jun 14, 2013, 10:23:11 AM
    Author     : Nikhil
--%>

<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Success | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
				
<%! 
	Connection con=null;
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
        String uname=null;
	String pwd=null;
        String em=null;
	String fn=null;
        String ln=null;
        String age=null;
        String mar=null;
        String gen=null;
        String addr=null;
        String mob=null;
        String kn=null;
        String mn=null;
%>

<body>
    
<%              uname=request.getParameter("user");
                pwd=request.getParameter("pass");
                em=request.getParameter("email");
                fn=request.getParameter("fname");
                ln=request.getParameter("lname");
                age=request.getParameter("age");
                mar=request.getParameter("martial");
                gen=request.getParameter("myradio");
                addr=request.getParameter("address");
                mob=request.getParameter("mobile");
                
                MessageDigest alg = MessageDigest.getInstance("MD5");
                alg.reset();
                alg.update(pwd.getBytes());
                byte[] digest = alg.digest();
                StringBuffer hashedpwd = new StringBuffer();
                String hx;
                String HP=null;
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
                Statement st= con.createStatement();
                ResultSet rs=st.executeQuery("select * from login,registration where login.user='"+uname+"' or registration.email='"+em+"'");
                if(rs.next())
                {       if(rs.getString("user").equals(uname))
                        {  
                            %>
                            <script>alert("Username Already Registered!");
                             history.back(1);
                            </script>
                            <%
                         }
                        if(rs.getString("email").equals(em))
                        {  
                            %>
                            <script>alert("Email Already Registered!");
                            history.back(1);
                            </script>
                        <% 
                        }
                  }
                 else
                 {       for(int i=0;i<digest.length;i++)
                        {   hx=Integer.toHexString(0xFF & digest[i]);
                            if(hx.length()==1)
                                hx="0"+hx;
                            hashedpwd.append(hx);
                        }
                        HP=hashedpwd.toString();
                        System.out.println(HP);
                         ps=con.prepareStatement("INSERT INTO login values ('"+uname+"','"+HP+"')");
                         ps.executeUpdate();
                         ps1=con.prepareStatement("Insert into registration values('"+fn+"','"+ln+"','"+em+"','"+age+"','"+addr+"','"+mob+"','"+mar+"','"+gen+"','"+uname+"','user')");
                         ps1.executeUpdate();
                 }
%>
              <p id="p1">Sign Up Successful!! :)</p>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                            <br>
              <script>
                    setTimeout("location.href='login.html'",3000);
              </script>
		</div>
	</div>
	
</body>
</html>

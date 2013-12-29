<%-- 
    Document   : index
    Created on : Jun 13, 2013, 7:14:11 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.security.MessageDigest"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Redirecting.. | Online Food Ordering Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/fonts.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/valid.js"></script>
</head>
<body>
<div id="wrapper">
	
	<div id="page" class="container">
		<div id="content">
				
<% 
       String userid=request.getParameter("user");
       String pwd=request.getParameter("pass");
        MessageDigest alg = MessageDigest.getInstance("MD5");
        alg.reset();
        alg.update(pwd.getBytes());
        byte[] digest = alg.digest();
        StringBuffer hashedpwd = new StringBuffer();
        String hx;
        String HP=null;
        for(int i=0;i<digest.length;i++)
        {   hx=Integer.toHexString(0xFF & digest[i]);
            if(hx.length()==1)
                 hx="0"+hx;
            hashedpwd.append(hx);
        }
        HP=hashedpwd.toString();
        
       Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
       Statement st= con.createStatement();
       ResultSet rs=st.executeQuery("select * from login,registration where login.user='"+userid+"' and registration.username='"+userid+"'");
       if(rs.next())
        {   
            if(rs.getString(2).equals(HP))
            {  String u=rs.getString("fname");
               String l=rs.getString("lname");
               String r=rs.getString("role");
               if(session.isNew())
               { session.setAttribute("Username", userid);
               }
               pageContext.setAttribute("UN",userid, pageContext.APPLICATION_SCOPE);
               if(rs.getString("role").equals("user"))
                {   String welcome=response.encodeURL("welcome.jsp");
                    pageContext.setAttribute("F1",u, pageContext.APPLICATION_SCOPE);
                    pageContext.setAttribute("F2",l, pageContext.APPLICATION_SCOPE);
                    %>
                    <p id="p1">Welcome! <%=u%> <%=l%></p>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                    <br><br>
                    <p id="p3">Redirecting,Please wait!</p>
                    
                <script>
                    setTimeout("location.href='<%=welcome%>'",3500);
                </script>
                <%
                }else
                {  String admin=response.encodeURL("admin.jsp");
                    pageContext.setAttribute("F1",u, pageContext.APPLICATION_SCOPE);
                    pageContext.setAttribute("F2",l, pageContext.APPLICATION_SCOPE);
                 %>
                    <div id="p1">Welcome! <%=u%> <%=l%> Admin</div>
                    <br><br>
                    <div class="loader1">
	        	<i></i><i></i>
	      	</div>
                            <br>
                    <div id="p3"><br>Redirecting,Please wait!</div>
                <script>
                    setTimeout("location.href='<%=admin%>'",3500);
                </script>
                <%}
            }
            else
            {   %>
                <script>alert("Invalid Username or Password!");
                history.back(1);
                </script>
                <%
            }
        }
       else
        {   %>
            <script>alert("Invalid Username or Password!");
            history.back(1);
            </script>
            <%
        }
%>
</div>
		</div>
	</div>
</body>
</html>

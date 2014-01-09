<%-- 
    Document   : new
    Created on : Jun 28, 2013, 12:09:25 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecting..</title>
    </head>
    <body>
         <%!     Connection con=null;    
                Statement st=null;
                Statement st1=null;
                        
    %>
        <%  
            String order=request.getParameter("order");
            Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/account","root","root");
        st= con.createStatement();
        st1= con.createStatement();
        ResultSet rs=st.executeQuery("select order_id,fstats from orderlist where order_id='"+order+"'");
        if(rs.next())
        {   if(rs.getString("fstats").equals("pending"))
             {
            st.executeUpdate("UPDATE orderlist set fstats='delivered' where order_id='"+order+"'");
             %>
            <jsp:forward page="admin.jsp"/>
            <%  }
                    else
                      { %>
                        <script>alert("Order Already Delivered!");
                        history.back(1);
                        </script>
                        <%
                    }
        }
        else
        {                %>
                        <script>alert("No Order Found!");
                        history.back(1);
                        </script>
                        <%
               }
        %>
                    
    </body>
</html>

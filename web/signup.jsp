<%-- 
    Document   : signup
    Created on : Nov 20, 2018, 9:43:51 AM
    Author     : Ash
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
    </head>
    <body>
        <%
           String uname=request.getParameter("username");
           String pwd=request.getParameter("password");
           String email=request.getParameter("email");
           String tel=request.getParameter("contact");
           String add=request.getParameter("address");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/javaproject";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into user values('"+email+"','"+pwd+"','"+add+"','"+tel+"','"+uname+"')");              
                out.println("Signed Up Successfully!");
                String redirectURL = "LogIn.html";
                response.sendRedirect(redirectURL);

            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>

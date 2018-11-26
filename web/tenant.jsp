<%-- 
    Document   : tenant
    Created on : Nov 26, 2018, 11:02:48 AM
    Author     : Ash
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tenant</title>
    </head>
    <body>
               <%
           String Name=request.getParameter("name");
           %>
           <br>
           <%
           String Age=request.getParameter("age");
           %><br>
           <%
           String Nom=request.getParameter("noofmem");
           %><br>
           <%
           String emai=request.getParameter("email");
           %><br>
           <%
           String phone=request.getParameter("pno");
           %><br>
           <%
           String cat=request.getParameter("category");
           %><br>
           <%
           String FnH=request.getParameter("hostel");
           %><br>
           <%
           String req=request.getParameter("requirements");
           %><br>
           <%
           String sugg=request.getParameter("suggestion");
           
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/javaproject";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into tenant values('"+Name+"','"+Age+"','"+Nom+"','"+emai+"','"+phone+"','"+cat+"','"+FnH+"','"+req+"','"+sugg+"')");              
                response.sendRedirect("display.jsp");
                
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>

    </body>
</html>

<%-- 
    Document   : display
    Created on : Nov 26, 2018, 2:52:09 PM
    Author     : Ash
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <table>
            <tr>
            <th>Name&nbsp;</th>
            <th>Age&nbsp;</th>
            <th>No of members&nbsp;&nbsp;</th>
            <th>email&nbsp;&nbsp;&nbsp;</th>
            <th>phone&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>category&nbsp;&nbsp;&nbsp;</th>
            <th>Flats and houses&nbsp;&nbsp;&nbsp;</th>
            <th>Requirement&nbsp;&nbsp;&nbsp;</th>
            <th>Suggestions</th>
            </tr>
       <%
            
           try{
	
               String myUrl="jdbc:mysql://localhost/javaproject";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="Select * from tenant";
		//step 3:
		PreparedStatement st=conn.prepareStatement(query);
		//step 4:
                ResultSet rs =st.executeQuery();
                while(rs.next())
                {
                %>
                <pre><b><font size="5px">DETAILS:</font></b>
                </pre>
                <tr>
               <% 
                %><td>&nbsp;<%out.println(rs.getString("name"));%>&nbsp;</td><%
                
         
                
                %><td><%out.println(rs.getString("age"));%>&nbsp;</td><%
                
                
                %><td><%out.println(rs.getString("nom"));%>&nbsp;</td><%
            
           
                
                %><td><%out.println(rs.getString("email"));%>&nbsp;</td><%
           
           
               
                %><td><%out.println(rs.getString("phone"));%>&nbsp;</td><%
           
                
                %><td><%  out.println(rs.getString("cat"));%>&nbsp;</td><%
               
          
                
                %><td><% out.println(rs.getString("FnH"));%>&nbsp;</td><%
                
                         
                %><td><% out.println(rs.getString("req"));%>&nbsp;</td><%
                
    
                
                %><td><%out.println(rs.getString("snugg"));%></td>                    
                </tr>
                    <br>
               
               <%

              }
              
                  }
                  
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
                
           
        %>
        </table>
    </body>
</html>

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class tenant_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tenant</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("               ");

           String Name=request.getParameter("name");
           
      out.write("\n");
      out.write("           <br>\n");
      out.write("           ");

           String Age=request.getParameter("age");
           
      out.write("<br>\n");
      out.write("           ");

           String Nom=request.getParameter("noofmem");
           
      out.write("<br>\n");
      out.write("           ");

           String emai=request.getParameter("email");
           
      out.write("<br>\n");
      out.write("           ");

           String phone=request.getParameter("pno");
           
      out.write("<br>\n");
      out.write("           ");

           String cat=request.getParameter("category");
           
      out.write("<br>\n");
      out.write("           ");

           String FnH=request.getParameter("hostel");
           
      out.write("<br>\n");
      out.write("           ");

           String req=request.getParameter("requirements");
           
      out.write("<br>\n");
      out.write("           ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

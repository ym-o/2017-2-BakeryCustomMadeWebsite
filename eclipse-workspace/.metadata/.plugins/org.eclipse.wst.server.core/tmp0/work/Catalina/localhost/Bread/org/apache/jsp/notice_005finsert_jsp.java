/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-12-10 04:31:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class notice_005finsert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=euc-kr");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <!-- calendar -->\r\n");
      out.write("    <link rel=\"stylesheet\"\r\n");
      out.write("     href=\"//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css\"\r\n");
      out.write("     type=\"text/css\">\r\n");
      out.write("    <script\r\n");
      out.write("     src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"http://code.jquery.com/ui/1.8.18/jquery-ui.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("     $(function() {\r\n");
      out.write("       $(\"#date1\").datepicker();\r\n");
      out.write("     });\r\n");
      out.write("    </script>\r\n");
      out.write("<title>Mr.Bread</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>\r\n");
      out.write("    <div id=\"container\">\r\n");
      out.write("        <div>\r\n");
      out.write("            <ul class=\"h\">\r\n");
      out.write("                <li class=\"h\"><a class=\"h\" href=\"homelogin.jsp\">HOME</a></li>\r\n");
      out.write("                <li class=\"h\"><a class=\"h\" href=\"content.jsp\">CONTENT</a></li>\r\n");
      out.write("                <li class=\"h\"><a class=\"h\" href=\"order.jsp\">ORDER</a></li>\r\n");
      out.write("                <li class=\"h\"><a class=\"h\" href=\"about.jsp\">ABOUT</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br /><br /><br />\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("\t  <br />\r\n");
      out.write("          <center>\r\n");
      out.write("            <p class=\"p1\">New Notice</p>\r\n");
      out.write("            <hr width=\"15%\" style=\"border: 1px solid darkred\" />\r\n");
      out.write("\t    <br />\r\n");
      out.write("  \t    <form action=\"notice_insert_db.jsp\" method=\"post\">\r\n");
      out.write("    \t      <table border=\"0\">\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t          <td align=\"center\" bgcolor=\"#b76d39\" width=\"80\"><p class=\"three\">title</p></td>\r\n");
      out.write("\t          <td><input type=\"text\" name=\"title\" size=\"78\"></td>\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("\t          <td align=\"center\" bgcolor=\"#b76d39\"><p class=\"three\">date</p></td>\r\n");
      out.write("\t          <td><input type=\"text\" name=\"date\" id=\"date1\" size=\"78\"></td>\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t\t<tr>\r\n");
      out.write("     \t\t  <td valign=\"top\" align=\"center\" bgcolor=\"#b76d39\"><p class=\"three\">content</p></td>\r\n");
      out.write("     \t\t  <td><textarea name=\"content\" rows=\"10\" cols=\"80\"></textarea></td>\r\n");
      out.write("    \t\t</tr>\r\n");
      out.write("    \t      </table><br><br>\r\n");
      out.write("\r\n");
      out.write("\t      <input type=\"submit\" value=\"upload\" class=\"button button2\"/>\r\n");
      out.write("              <input type=\"reset\" value=\"rewrite\" class=\"button button2\"/>\r\n");
      out.write("\r\n");
      out.write("     \t      ");
 
		String flag = request.getParameter("flag");
		if("r".equals(flag)){ 
      out.write("\r\n");
      out.write("\t\t  <input type=\"hidden\" name=\"ref\" value=\"");
      out.print( request.getParameter("ref") );
      out.write("\">\r\n");
      out.write("\t\t  <input type=\"hidden\" name=\"reply\" value=\"y\">\r\n");
      out.write("    \t      ");
 } else 
      out.write("\r\n");
      out.write("\t      <input type=\"hidden\" name=\"reply\" value=\"n\">\r\n");
      out.write("    \t    </form>\r\n");
      out.write("\t  <br /><br />\r\n");
      out.write("\t  <p class=\"p5\"><a href=\"notice_admin.jsp\">Go to the Notice Page</a> &nbsp;&nbsp;&nbsp;\r\n");
      out.write("   \t  <a href=\"homelogin.jsp\">Go to the Home Page</a></p><br><br>\r\n");
      out.write("          </center>\r\n");
      out.write("            <div id=\"part2\">\r\n");
      out.write("                <div>\r\n");
      out.write("                    <marquee width=\"auto\" direction=\"right\" behavior=\"scroll\" scrollamount=\"7\" scrolldelay=\"10\" \t\t\tloop=\"10\" hspace=\"5\" vspace=\"5\">\r\n");
      out.write("                        <img src=\"1.jpg\">\r\n");
      out.write("                        <img src=\"4.jpg\">\r\n");
      out.write("                        <img src=\"2.jpg\">\r\n");
      out.write("                        <img src=\"3.jpg\">\r\n");
      out.write("                        <img src=\"5.jpg\">\r\n");
      out.write("                    </marquee>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div> \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

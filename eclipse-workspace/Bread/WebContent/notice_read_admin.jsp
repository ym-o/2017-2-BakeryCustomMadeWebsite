<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Mr.Bread</title>
</head>

<body>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <div id="container">
        <div>
            <ul class="h">
                <li class="h"><a class="h" href="homelogin.jsp">HOME</a></li>
                <li class="h"><a class="h" href="content.jsp">CONTENT</a></li>
                <li class="h"><a class="h" href="order.jsp">ORDER</a></li>
                <li class="h"><a class="h" href="about.jsp">ABOUT</a></li>
            </ul>
        </div>
        <br /><br /><br />
        <div id="main">
		<br />
                <center>
         <p class="p1">Delete Your Notice</p>
         <hr width="24%" style="border: 1px solid darkred" />
		<br />
     <%
   	 int id, ref = 0;
	 String title = "", date = "", content = "";
         Connection conn = null;
	 Statement stmt = null;
	 ResultSet rs = null;
	     
         id = Integer.parseInt(request.getParameter("id"));

         try {
               Class.forName("com.mysql.jdbc.Driver");
               String url = "jdbc:mysql://localhost:3306/notice_list";
               conn = DriverManager.getConnection(url, "root", "1015");
               stmt = conn.createStatement();
               String sql = "select * from notice_list where id = " + id;
               rs = stmt.executeQuery(sql);
         }
         catch(Exception e) {
               out.println("DB 연동 오류입니다. : " + e.getMessage());
         } 

         while(rs.next())  {
	       title = rs.getString("title");
	       date = rs.getString("date");
	       content = rs.getString("content");
	       ref = Integer.parseInt(rs.getString("ref"));
	 }
    %>     
    <br><br>
    <form action="notice_delete.jsp" method="post">
    <table border="0" align="center" width="600" bgcolor="antiquewhite">
      <tr>
	<td align="center" bgcolor="#b76d39" width="80"><p class="three">title</p></td>
        <td align="left" width="500"> <%= title%></td>
      </tr>
      <tr>
	<td align="center" bgcolor="#b76d39"><p class="three">date</p></td>
        <td align="left" bgcolor="antiquewhite"> <%= date%></td>
      </tr>
      <tr>
	<td valign="top" align="center" bgcolor="#b76d39"><p class="three">content</p></td>
        <td align="left" bgcolor="antiquewhite"> <%= content%></td>
      </tr>

    </table>
    <table border="0">
      <tr>
        <td><input type="hidden" name="id" value="<%= request.getParameter("id") %>"></td>
      </tr>
    </table><br>
    <input type="submit" value="delete" class="button button2">
    </form><br><br>
    <p class="p4"><a href="notice_admin.jsp"> Go to the Notice Page </a> &nbsp;&nbsp;&nbsp;
      <a href="homelogin.jsp"> Go to the Home Page </a></p> <br><br>
            </center>
            <div id="part2">
                <div>
                    <marquee width="auto" direction="right" behavior="scroll" scrollamount="7" scrolldelay="10" loop="10" hspace="5" vspace="5">
                        <img src="1.jpg">
                        <img src="4.jpg">
                        <img src="2.jpg">
                        <img src="3.jpg">
                        <img src="5.jpg">
                    </marquee>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
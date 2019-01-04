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
                <li class="h"><a class="h" href="home.jsp">HOME</a></li>
                <li class="h"><a class="h" href="content.jsp">CONTENT</a></li>
                <li class="h"><a class="h" href="order.jsp">ORDER</a></li>
                <li class="h"><a class="h" href="about.jsp">ABOUT</a></li>
            </ul>
        </div>
        <br /><br /><br />
        <div id="main">
		<br />
                <center>
         <p class="p1">Delete Your Order List</p>
         <hr width="28%" style="border: 1px solid darkred" />
		<br />
     <%
   	 int id, ref = 0;
	 String yourname = "", bread = "", date = "", number = "";
         Connection conn = null;
	 Statement stmt = null;
	 ResultSet rs = null;
	     
         id = Integer.parseInt(request.getParameter("id"));

         try {
               Class.forName("com.mysql.jdbc.Driver");
               String url = "jdbc:mysql://localhost:3306/bread_order";
               conn = DriverManager.getConnection(url, "root", "1015");
               stmt = conn.createStatement();
               String sql = "select * from bread_order where id = " + id;
               rs = stmt.executeQuery(sql);
         }
         catch(Exception e) {
               out.println("DB 연동 오류입니다. : " + e.getMessage());
         } 

         while(rs.next())  {
	       yourname = rs.getString("yourname");
	       bread = rs.getString("bread");
	       date = rs.getString("date");
	       number = rs.getString("number");
	       ref = Integer.parseInt(rs.getString("ref"));
	 }
    %>     
    <br><br>
    <form action="order_delete_db.jsp" method="post">
    <table border="0" align="center" width="500" bgcolor="antiquewhite">
      <tr>
	<td align="center" bgcolor="#b76d39" width="100"><p class="three">name</p></td>
        <td align="center" bgcolor="antiquewhite" width="200"> <%= yourname%></td>
      </tr>
      <tr>
	<td align="center" bgcolor="#b76d39"><p class="three">bread</p></td>
        <td align="center" bgcolor="antiquewhite"> <%= bread%></td>
      </tr>
      <tr>
	<td align="center" bgcolor="#b76d39"><p class="three">date</p></td>
        <td align="center" bgcolor="antiquewhite"> <%= date%></td>
      </tr>
      <tr>
	<td align="center" bgcolor="#b76d39"><p class="three">number</p></td>
        <td align="center" bgcolor="antiquewhite"> <%= number%></td>
      </tr>
      <tr>
	<td align="center" bgcolor="#b76d39"><p class="three">password</p></td>
        <td align="center" bgcolor="antiquewhite"><input type="password" name="password"></td>
      </tr>
    </table>
    <table border="0">
      <tr>
        <td><input type="hidden" name="id" value="<%= request.getParameter("id") %>"></td>
      </tr>
    </table><br>
    <input type="submit" value="delete" class="button button2">
    <input type="reset" value="rewrite" class="button button2">
    </form><br><br>
    <p class="p4"><a href="order.jsp"> Return to the Order Page </a><p><br><br>
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
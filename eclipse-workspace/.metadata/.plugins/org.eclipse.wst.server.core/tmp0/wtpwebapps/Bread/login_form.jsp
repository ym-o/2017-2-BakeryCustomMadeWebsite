<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Mr.Bread</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String id = "";
		String pw = "";
		if (cookies != null) {
			for (Cookie c : cookies) {
				//쿠키값을 가져온다.
				//id라는 이름을 가진 변수가 있다면
				if (c.getName().equals("id")) {
					//string id에 그 값을 집어넣음
					id = c.getValue();
					//pw라는 이름을 가진 변수가 있다면
				} else if (c.getName().equals("pw")) {
					pw = c.getValue();
				}
			}
		}
	%>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" type="text/css" href="login.css" />

	<form method="post" action="http://localhost:8080/Bread/LoginAction">

		<div id="container">
			<div>
				<ul class="h">
					<li class="h"><a class="h" href="home.jsp">HOME</a></li>
					<li class="h"><a class="h" href="content.jsp">CONTENT</a></li>
					<li class="h"><a class="h" href="order.jsp">ORDER</a></li>
					<li class="h"><a class="h" href="about.jsp">ABOUT</a></li>
				</ul>
			</div>
			<br /> <br /> <br />
			<div id="main">
				<br> <br>
				<p class="p1">Login</p>
				<hr width="17%" style="border: 1px solid darkred" />
				<br>
				<form method="post" action="http://localhost:8080/Bread/LoginAction">
					<div class="div1">
						<table class="table1">
							<tr>
								<td><p class="p4">ID</p></td>
								<td><input type="text" name="id" value="<%=id%>"></td>


							</tr>
							<tr>
								<td><p class="p4">PW</p></td>
								<td><input type="password" name="pw" value="<%=pw%>"></td>
							</tr>

						</table>
						<table>
							<tr>
								<td><input name="save" type="checkbox">ID/PW save</td>
							</tr>
							<tr>
								<td><input type="submit" value="Login"
									class="button button2"></td>
							</tr>
						</table>
					</div>
				</form>
				<br> <br>
				<div id="part2">
					<div>
						<marquee width="auto" direction="right" behavior="scroll"
							scrollamount="7" scrolldelay="10" loop="10" hspace="5" vspace="5">
							<img src="1.jpg"> <img src="4.jpg"> <img src="2.jpg">
							<img src="3.jpg"> <img src="5.jpg">
						</marquee>
					</div>
				</div>

			</div>
		</div>
</body>
</html>
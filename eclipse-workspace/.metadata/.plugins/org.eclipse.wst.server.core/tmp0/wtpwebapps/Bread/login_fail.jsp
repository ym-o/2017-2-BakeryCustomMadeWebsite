<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Mr.Bread</title>
</head>
<body>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" type="text/css" href="login.css" />
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
			<p class="p1">fail</p>
			<hr width="10%" style="border: 1px solid darkred" />
			<br>
			<div>
				<table class="table">
					<tr>
						<td>
							<p class="p5">
								Login Failed.<br> Please re-enter.
							</p>
							<center>
								<form method="post" action="home.jsp">
									<input type="submit" value="go back to homepage"
										class="button button2">
								</form>
							</center>
						</td>
					</tr>
				</table>
			</div>
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
</body>
</html>
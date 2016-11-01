<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="./css/usercss.css" />
<title>用户中心！</title>
</head>
<body>
<div id="container">
         <div id="container2">
	<%
		String user = "";
	   String SqlId = "";
		try {
			user = session.getAttribute("UEmail").toString();
			SqlId= session.getAttribute("SqlID").toString();
			
		} catch (NullPointerException e) {
			e.getStackTrace();
		}
		
		if (user == null || user.equals("")||SqlId == null||SqlId.equals("")){
			response.sendRedirect("login.jsp");
	%>



	<%
		} else {
	%>





	<div class="alert alert-success">

		<nav class="navbar navbar-inverse" role="navigation"> <!--<nav class="navbar navbar-inverse" role="navigation">-->
		<p class="text-center">
		<ul class="nav nav-pills">

			<li role="presentation"><a href="./index.jsp" target="_blank">首页</a></li>

			<li role="presentation"><a href="./user.jsp">帖子列表</a></li>
			<li role="presentation"><a href="#">发帖</a></li>
			<li role="presentation"><a href="#">用户中心</a></li>
			<li role="presentation"><a href="#"><span class="label label-success"><%=session.getAttribute("SqlUserName")%></a></li>
			<li role="presentation"><a href="#">退出</a></li>

		</ul>

		</p>
		</nav>
		<br>
		<br>
		<br>
		<br>
		<br>
		<%@include file="./userup.jsp" %>
		<br>
		<br>
		<!-- <h3>我的帖子</h3> -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
				<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
	</div>
	<!--  
<nav class="navbar navbar-inverse" role="navigation">

<p class="text-center presentation">
<a href="#"><font size="6" color="red">首页</font></a>

<font size="6" color="red">用户中心</font>

<font size="6" color="red">退出</font>
</p>
</nav>
-->
	<%
		}
	%>
	</div>
	</div>
</body>
</html>
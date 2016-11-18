<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="./css/css.css" />


<title>用户中心！</title>
</head>
<body>
<!--
//                            _ooOoo_  
//                           o8888888o  
//                           88" . "88  
//                           (| -_- |)  
//                            O\ = /O  
//                        ____/`---'\____  
//                      .   ' \\| |// `.  
//                       / \\||| : |||// \  
//                     / _||||| -:- |||||- \  
//                       | | \\\ - /// | |  
//                     | \_| ''\---/'' | |  
//                      \ .-\__ `-` ___/-. /  
//                   ___`. .' /--.--\ `. . __  
//                ."" '< `.___\_<|>_/___.' >'"".  
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |  
//                 \ \ `-. \_ __\ /__ _/ .-` / /  
//         ======`-.____`-.___\_____/___.-`____.-'======  
//                            `=---='  
//  
//         .............................................  
//                  佛祖保佑             永无BUG 
-->
<div id="container">
         <div id="user">
	<%
		String user = "";
	   String SqlUserID = "";
		try {
			user = session.getAttribute("UEmail").toString();
			SqlUserID= session.getAttribute("SqlUserID").toString();
			
		} catch (NullPointerException e) {
			e.getStackTrace();
		}
		
		if (user == null || user.equals("")||SqlUserID == null||SqlUserID.equals("")){
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

			<li role="presentation"><a href="#">帖子列表</a></li>
			<li role="presentation"><a href="./intoupdate.jsp">发帖</a></li>
			<li role="presentation"><a href="./mytopic.jsp">我的帖子</a></li>
			<li role="presentation"><a href="./userupdate.jsp">用户中心</a></li>
			<li role="presentation"><a href="#">
			<span class="label label-success"><%=session.getAttribute("SqlUserName")%></a>
			</li>
			<li role="presentation"><a href="#">退出</a></li>

		</ul>

		</p>
		</nav>

		<h4>
		<img alt="逗" src="./img/dou.gif" class="img-circle" />
		<span class="label label-success">亲，欢迎来到论坛,下面是帖子列表!</span>
		<img alt="逗" src="./img/dou.gif" class="img-circle" />
		</h4>
		<%@include file="./showtopic.jsp" %>

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


	<%
		}
	%>
	</div>
	</div>
</body>
</html>
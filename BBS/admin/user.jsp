<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="../css/css.css" />


<title>管理员-用户中心！</title>
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
		String AdminEmail = "";
	   String AdminID = "";
		try {
			AdminEmail = session.getAttribute("AdminEmail").toString();
			AdminID= session.getAttribute("AdminID").toString();
			
		} catch (NullPointerException e) {
			e.getStackTrace();
		}
		
		if (AdminEmail == null || AdminEmail.equals("")||AdminID == null||AdminID.equals("")){
			response.sendRedirect("index.jsp");
	%>



	<%
		} else {
	%>


	<div class="alert alert-success">

		<nav class="navbar navbar-inverse" role="navigation">
		<p class="text-center">
		<ul class="nav nav-pills">

			<li role="presentation"><a href="./index.jsp" target="_blank">首页</a></li>


			<li role="presentation"><a href="#">用户管理中心</a></li>
			<li role="presentation"><a href="#">
			<span class="label label-success"><%=session.getAttribute("AdminName")%></a>
			</li>
			<li role="presentation"><a href="#">退出</a></li>

		</ul>

		</p>
		</nav>

		<h4>
		<img alt="逗" src="../img/dou.gif" class="img-circle" />
		<span class="label label-success">管理员，下面是用户列表!</span>
		<img alt="逗" src="../img/dou.gif" class="img-circle" />
		</h4>
		<%@include file="./showuser.jsp" %>

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
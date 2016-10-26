<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="./css/css.css" />
<title>在线购书</title>
</head>
<body>
	<div id="container">
         <div id="container2">
         	
<form class="form-horizontal" role="form" action="bookShopCheck.jsp" method="get">
<font size="4" color="#FF0000">登录成功！</font><hr>
<font size="4" color="#FF0000">欢迎邮箱为：</font>
    <font size="4" color="#228B22"><%=request.getParameter("userEmail")%></font>
   <font size="4" color="#FF0000">的用户</font>

<hr>
<font size="4" color="red">请选择需要购买的书籍：</font>
<select class="form-control" name="item">
  <option>《JAVA程序设计与项目实训教程》</option>
  <option>《JSP程序设计技术教程》</option>
  <option>《JSP程序设计与项目实训教程》</option>
  <option>《JSP程序设计实训与案例教程》</option>
  <option>《Struts2+Hibernate 框架技术教程》</option>
  <option>《Web框架技术(Struts2+Hibernate+Spring3)教程》</option>
  <option>
  《Java Web 技术整合应用与项目实战(JSP+Servlet+Struts2+Hibernate+Spring3)》
  </option>
</select>
<br>
<hr>
<div class="form-group center">
<button type="submit" name="submit" class="btn btn-info" value="购买">购买</button>
  &nbsp;
      &nbsp;
     <a href="./index.htm">注销登录？</a>
</div>


 </form>
 </div>
 </div>
</body>
</html>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">

div{

   width:500px;
   left:100px;
   height:400px;
   margin:100px auto;
   border:5px solid red;
   text-align: center;
}

</style>

</head>
<body>

<div>
<font size='5' color='green'>猜数字游戏</font>
<br>
<br>
<%

if(request.getAttribute("show")!=null){
	
	 out.println("<font size='5' color='red'>"+request.getAttribute("show")+"</font>");
	 
}
   Integer random = (Integer)request.getAttribute("random");
   
   if(random==null){
	   Random randomer = new Random();
	   random = randomer.nextInt(100);
	   
   }



%>

<form action="ShowNum" methond="get">

<input type="hidden" value="<%=random %>" name="random" />
<br>

      <input class="form-control" type="text" name="num">

<br>
<br>
<p>
  <button type="submit" class="btn btn-primary btn-lg">点击提交</button>
</p>

</form>
</div>
</body>
</html>
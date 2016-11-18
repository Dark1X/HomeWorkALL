<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page errorPage="ShowError.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<title>发帖</title>
</head>
<body>
<form action="CheckInto.jsp" method="post">
<h2>标题</h2>

<input type="text" class="form-control" placeholder="请输入标题" name="title" />
<br>
<h2>内容</h2>
<textarea class="form-control" rows="6" placeholder="请输入内容(支持 HTML代码)" name="content"></textarea>
<br>
<br>
<p style='text-align:center'>
  <button type="submit" class="btn btn-success">提交</button>
  ——
  <button type="reset" class="btn btn-success">重置</button>
  &nbsp; &nbsp;&nbsp;
</p>
</form>
</body>
</html>
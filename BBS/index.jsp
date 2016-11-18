<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/zui.min.css">
<!--
<link rel="stylesheet" href="//cdn.bootcss.com/zui/1.5.0/css/zui.min.css">
 ZUI Javascript 依赖 jQuery -->
 <script src="./bootstrap/dist/css/jquery.js"></script>
<!--
<script src="//cdn.bootcss.com/zui/1.5.0/lib/jquery/jquery.js"></script>
 ZUI 标准版压缩后的 JavaScript 文件 
<script src="//cdn.bootcss.com/zui/1.5.0/js/zui.min.js"></script>-->
<script src="./bootstrap/dist/css/zui.min.js"></script>

<title>欢迎访问First论坛！</title>
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<%
    //统计访问者代码
     int number = 0;
     Object obj=application.getAttribute("number");
     if(obj==null){
    	 application.setAttribute("number", String.valueOf(number));
     }else{
    	 number=Integer.parseInt(obj.toString());
    	 number+=1;
    	 application.setAttribute("number", String.valueOf(number));
     }
%>

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
<center>

<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
  <!-- 圆点指示器 -->
  <ol class="carousel-indicators">
    <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myNiceCarousel" data-slide-to="1"></li>
    <li data-target="#myNiceCarousel" data-slide-to="2"></li>
  </ol>

  <!-- 轮播项目 -->
  <div class="carousel-inner">
    <div class="item active">
      <img alt="First slide" src="./img/slide1.jpg">
      <div class="carousel-caption">
        <h1>欢迎访问First论坛！</h1>
        <h3>I'm from Soft1532</h3>
      </div>
    </div>
    <div class="item">
      <img alt="Second slide" src="./img/slide2.jpg">
      <div class="carousel-caption">
        <h1>本论坛是一个综合的学习交流论坛</h1>
        <h3>This is our word！</h3>
      </div>
    </div>
    <div class="item">
      <img alt="Third slide" src="./img/slide3.jpg">
      <div class="carousel-caption">
        <h1>期待与您共勉！</h1>
        <h3>Come On~</h3>
      </div>
    </div>
  </div>

  <!-- 项目切换按钮 -->
  <a class="left carousel-control" href="#myNiceCarousel" data-slide="prev">
    <span class="icon icon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#myNiceCarousel" data-slide="next">
    <span class="icon icon-chevron-right"></span>
  </a>
</div>
<div class="jumbotron">
<h4>

欢迎第<font color="red"><%=number%></font>位访问者！

</h4>
  <!-- <p class="text-center presentation"><h1>欢迎访问First论坛！</h1></p> -->
<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=110 src="http://music.163.com/outchain/player?type=0&id=501511225&auto=1&height=90"></iframe>
  <br>
<br>

  <p>
  
  <a class="btn btn-default btn-lg" href="./login.jsp" target="_blank" trole="button">点击登录</a>
  ——
  <a class="btn btn-default btn-lg" href="./register.jsp" target="_blank" role="button">点击注册</a></p>
</div>

</center>
</body>
</html>
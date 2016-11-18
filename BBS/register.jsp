<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-First论坛</title>


<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="./css/css.css" />

<script type="text/javascript">


    function chekUser(){
        var uName = document.getElementById("userName").value.trim();
        var dvuName = document.getElementById("UserDiv");
        var patt = /^\S{2,6}$/;
      
        if (patt.test(uName)) {
        	  dvuName.innerHTML = "";
            return true;

        } else {
            dvuName.innerHTML = "名字太短或太长!名字必须为2到6个字符";
            return false;
        }
            
    }

    function checkPwd(){
        var Pwd = document.getElementById("passWd").value.trim();
        var patt = /^\w{6,16}$/;
        var dvPwd = document.getElementById("UserPwd");
        if (patt.test(Pwd)) {
        	 dvPwd.innerHTML = "";
            return true;
        } else {
            dvPwd.innerHTML = "密码必须为6-16个字符！";
            return false;
        }
    }
    function checkAllpasswd() {
        var Pwd = document.getElementById("passWd").value.trim();
        var Pwd2 = document.getElementById("passWd2").value.trim();
        var dvPwd2 = document.getElementById("UserPwd2");
        if (Pwd == Pwd2) {
        	dvPwd2.innerHTML = "";
            return true;
        } else {
            dvPwd2.innerHTML = "两次密码不一致！";
            return false;
        }
    }
    function checkEmail() { 
        var uEmail = document.getElementById("Email").value;
        var dvEmail = document.getElementById("EmailDiv");
        dvEmail.innerHTML = "";
        var patt = /^\w+@\w+\.\w+[(com)|(cn)|(org)|(net)]$/;
        if (patt.test(uEmail)){
        	
        	dvEmail.innerHTML = "";
        	return true;
        }   
        else {
            dvEmail.innerHTML = "邮件格式不正确！";
            return false;
        }
    }


    function chekAll() {
        if (!chekUser() ||!checkPwd()|| !checkAllpasswd() || !checkEmail()) {
            return false;

        } else {
    		alert('注册成功！即将跳转到登录界面！');
            return true;
        }
       
    }
       
</script>	

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
         
	<div id="top">
		<div id="top2">
			<center>
            <br><br /><br /><br />
				<p>
					<font size="6" color="#B22222"><strong>欢迎注册会员</strong> </font>
				</p>
				<p>
					<font size="6" color="#f42a73"><br /> </font>
				</p>
			</center>
<form class="form-horizontal has-error has-feedback" role="form" action="CheckRigister.jsp" method="post" onsubmit="return chekAll()">
<div id="rigister">
			<div class="form-group">
				<label for="inputuser" class="col-sm-2 control-label text-danger">名字</label>
					 <div class="col-sm-10">
						<input type="username" class="form-control" name="username" id="userName" placeholder="请输入名字">

						<div id="UserDiv" class="btn-default">
						
					</div>
					</div>

<br /><br /><br /><br /><br />
				<label for="inputPassword" class="col-sm-2 control-label text-danger">密码</label>
					<div class="col-sm-10">
						
						     <input type="password" class="form-control" id="passWd" placeholder="请输入密码">
						<div id="UserPwd" class="btn-default">

					</div>
						
					</div>
<br /><br /><br /><br />	<br />
				<label for="inputPassword1" class="col-sm-2 control-label text-danger">确认<br>密码</label>
					<div class="col-sm-10">
						
						    <input type="password" class="form-control" name="passwd" id="passWd2" placeholder="请再次输入密码">
						<div id="UserPwd2" class="btn-default">


					</div>
					</div>
<br /><br /><br /><br /><br />				



				
					<label for="inputEmail" class="col-sm-2 control-label text-danger">邮箱</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" name="email" id="Email" placeholder="请输入邮箱">
												<div id="EmailDiv" class="btn-default">

					</div>
					</div>
	<br />	<br />					
                    </div><!--form-group类结束-->
                    
                    
			

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox">
							<a href="#">
									<font color="#FF0000">已阅读相关法则</font>
							</a>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-danger">注册</button>
						&nbsp;&nbsp;
						<button type="reset" class="btn btn-danger">重置</button>
					</div>
				</div>
                </div>
			</form>
		

	</div>

</div>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LOGIN--网上用户注册登录系统</title>
<style type="text/css">
	input[type="text"][type="password"]{
		height:20px;
		width:100px;
	}
</style>
<script type="text/javascript">
	function checkData(){
		var name= document.loginform.username.value;
		if(name==""||name==null){
			document.getElementById("nametips").value="用户名不能为空!";
			document.getElementById("nametips").type="text";
			document.loginform.username.focus();
			return false;
		}
		var pass= document.loginform.password.value;
		if(pass==""||pass==null){
			document.getElementById("passwordtips").value="密码不能为空!";
			document.getElementById("passwordtips").type="text";
			document.loginform.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body onload="document.loginform.username.focus()">
	
	<center>
	<h3>--用户登录--</h3>
	<form method="post" name="loginform" action="check.jsp">
		名   称:<input name="username" type="text" /><input type="hidden" value="123" id="nametips" style="color:red;"></br>
		密	码:<input name="password" type="password" /><input type="hidden" value="123" id="passwordtips" style="color:red;"></br>
		<input type="submit" value="登录" onclick="return checkData()" />
		<input type="reset" value="重置" style="align:left;"/>
		<a href="register.jsp">注册</a>
	</form>
	</center>
</body>
</html>
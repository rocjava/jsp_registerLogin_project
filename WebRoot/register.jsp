<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>REGISTER--网上用户注册登录系统</title>
<script language="javascript">
	function checkData(){

	
		var username=document.registerform.username.value;
		if(username==""){
		alert("用户名不能为空!..");
		document.registerform.username.focus();
		return false;
		}
		var password=document.registerform.password.value;
		if(password==""){
		alert("密码不能为空!..");
		document.registerform.password.focus();
		return false;
		}
	/**
		var s_password=document.registerform.s_password.value;
		if(s_password!=password){
		alert("两次密码不一致!..");
		return false;
		}
		var sex=document.registerform.sex.value;
		if(sex==""){
		alert("性别不能为空!..");
		return false;
		}
		var age=document.registerform.age.value;
		if(age==""){
		alert("年龄不能为空!..");
		document.registerform.age.focus();
		return false;
		}
		var level=document.registerform.level.value;
		if(level==""){
		alert("程度不能为空!..");
		document.registerform.level.focus();
		return false;
		}
		var address=document.registerform.address.value;
		if(address==""){
		alert("地址不能为空!..");
		document.registerform.address.focus();
		return false;
		}
		var mail=document.registerform.mail.value;
		if(mail==""){
		alert("邮编不能为空!..");		
		document.registerform.mail.focus();
		return false;
		}
		var email=document.registerform.email.value;
		if(email==""){
		alert("邮箱不能为空!..");		
		document.registerform.email.focus();
		return false;
		level
		}
		**/
		/**
		var phone=document.registerform.phone.value;
		if(phone==""){
		alert("电话不能为空!..");		
		document.registerform.phone.focus();
		return false;
		}
		**/
		return true;
	}
</script>
</head>
<body onload="document.registerform.username.focus()">
	<center>
	<h3>--用户注册--</h3>
	
	<form name="registerform" method="post" action="doregister.jsp">
			<table>
		<tr><td>用户名</td><td><input type="text" name="username"/></td></tr>
		<tr><td>密码</td><td><input type="password" name="password"/></td></tr>
		<tr><td>确认密码</td><td><input type="password" name="s_password"/></td></tr>
		<tr><td>性别</td><td>男:<input type="radio" name="sex" value="M"/>女:<input type="radio" name="sex" value="F"/></td></tr>
		<tr><td>年龄</td><td><input type="text" name="age"/></td></tr>
		<tr>
			<td>文化程度</td>
			<td>
			<select name="level" style="width:150px;">
				<option value="小学">小学</option>
				<option value="中学">中学</option>
				<option value="大专">大专</option>
				<option value="大学">大学</option>
			</select>
			</td>
		</tr>
		<tr><td>地址</td><td><input type="text" name="address"/></td></tr>
		<tr><td>邮编</td><td><input type="text" name="mail"/></td></tr>
		<tr><td>邮箱</td><td><input type="text" name="email"/></td></tr>
		<tr><td>手机</td><td><input type="text" name="phone"/></td></tr>
		
		<tr><td><input type="submit" value="-提交" onclick="return checkData()"/></td><td><input type="reset" value="-重置"/></td></tr>
	</table>
	</form>
	</center>
</body>
</html>
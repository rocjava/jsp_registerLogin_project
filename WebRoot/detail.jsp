<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DETAIL--网上用户注册登录系统</title>
</head>
<body>
	
	<center>
	<h3 align="center">--详细信息--</h3>
	<table style="width:300px;">
		<tr><td>用户名</td><td><%= session.getAttribute("db_username")%></td></tr>
		<tr><td>性别</td><td><%= session.getAttribute("db_sex")%></td></tr>
		<tr><td>年龄</td><td><%= session.getAttribute("db_age")%></td></tr>
		<tr><td>文化程度</td><td><%= session.getAttribute("db_level")%></td></tr>
		<tr><td>地址</td><td><%= session.getAttribute("db_address")%></td></tr>
		<tr><td>邮编</td><td><%= session.getAttribute("db_mail")%></td></tr>
		<tr><td>邮箱</td><td><%= session.getAttribute("db_email")%></td></tr>
		<tr><td>手机</td><td><%= session.getAttribute("db_phone")%></td></tr>
		<tr><td><a href="javascript:history.back()">返回</a></td></tr>
	</table>
	</center>
</body>
</html>
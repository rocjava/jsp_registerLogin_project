<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DOREGISTER--网上用户注册登录系统</title>

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String sex= request.getParameter("sex");
		String age= request.getParameter("age");
		String level= request.getParameter("level");
		System.out.println("level===="+level);
		String address= request.getParameter("address");
		String mail= request.getParameter("mail");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		
		boolean flag=false;
		Connection con=null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://127.0.0.1:3306/test";
			con = DriverManager.getConnection(url,"root","root");
			System.out.println(con);
			
			PreparedStatement pm = con.prepareStatement("insert into sc_login values (?,?,?,?,?,?,?,?,?)");
			pm.setString(1,username);
			pm.setString(2,password);
			pm.setString(3,sex);
			pm.setString(4,age);
			pm.setString(5,level);
			pm.setString(6,address);
			pm.setString(7,mail);
			pm.setString(8,email);
			pm.setString(9,phone);
			
			int row= pm.executeUpdate();
			if(row==1){
				flag=true;
			}
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		catch(SQLException e1){
			e1.printStackTrace();
		}
		catch(Exception e2){
			e2.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(flag){
			response.sendRedirect("login.jsp");
		}else{
			response.sendRedirect("error.jsp");
		}
	%>
</body>
</html>
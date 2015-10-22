<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CHECK--网上用户注册登录系统</title>

</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String username= request.getParameter("username");
	String password= request.getParameter("password");
	Connection con=null;
	boolean flag=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3306/test";
		con = DriverManager.getConnection(url,"root","root");
		System.out.println(con);
		Statement state = con.createStatement();
		String sql = "select * from sc_login where db_username='"+username+"' and db_password='"+password+"';"; 
		ResultSet result = state.executeQuery(sql);
		if(result.next()){
			session.setAttribute("db_username",result.getString("db_username"));
			System.out.println(result.getString("db_username"));
			session.setAttribute("db_password",result.getString("db_password"));
			session.setAttribute("db_sex",result.getString("db_sex"));
			session.setAttribute("db_age",result.getString("db_age"));
			session.setAttribute("db_level",result.getString("db_level"));
			session.setAttribute("db_address",result.getString("db_address"));
			session.setAttribute("db_mail",result.getString("db_mail"));
			session.setAttribute("db_email",result.getString("db_email"));
			session.setAttribute("db_phone",result.getString("db_phone"));
			flag=true;
		}
	}catch(ClassNotFoundException e1){
		e1.printStackTrace();
	}catch(SQLException e2){
		e2.printStackTrace();
	}catch(Exception e3){
		e3.printStackTrace();
	}finally{
		if(con!=null){
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	if(flag){
		response.sendRedirect("detail.jsp");
	}else{
		response.sendRedirect("error.jsp");
	}
	%>
</body>
</html>
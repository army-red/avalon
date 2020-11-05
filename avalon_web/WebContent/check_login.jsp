<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>check login</title>
</head>
<body>
	<%	

		Boolean isLogin = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://127.0.0.1:3306/tmp?useSSL=false";
		String username = "root";
		String password = "xhj13388512676";
		conn = DriverManager.getConnection(url, username, password);
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		String sql = "SELECT *FROM user WHERE name ='" + name + "'AND pwd = '" + pwd + "'";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs.next()) {
			Cookie cookieToDelete[] = request.getCookies();
			for(int i=0;i<cookieToDelete.length;i++){  

    			cookieToDelete[i].setMaxAge(0);  

    			response.addCookie(cookieToDelete[i]);  

			} 


			Cookie cookie_name = new Cookie("username",name);
			Cookie cookie_pwd = new Cookie("password",pwd);

			cookie_name.setMaxAge(60*60*24);
			cookie_pwd.setMaxAge(60*60*24);

			response.addCookie(cookie_name);
			response.addCookie(cookie_pwd);

			response.sendRedirect("./index.html");
			
		}else{
			response.sendRedirect("./login.jsp");

		}
	%>

</body>
</html>



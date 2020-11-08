<%@page import="java.sql.*"%>
<%@ page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3306/tmp?useSSL=false";
	String username = "root";
	String password = "root";
	conn = DriverManager.getConnection(url, username, password);
	request.setCharacterEncoding("utf-8");//设置编码方式，防止中文乱码
	
	String name = request.getParameter("username");
	String pwd = request.getParameter("password");
	UUID uuid = UUID.randomUUID();

	String sql = "INSERT user(name,pwd,uuid) VALUES(?,?,?)";
	ps = conn.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, pwd);
	ps.setString(3, uuid.toString());
	int row = ps.executeUpdate();
	if (row > 0) {
		response.sendRedirect("./login.jsp");//重定向到登陆页面
	}
%>
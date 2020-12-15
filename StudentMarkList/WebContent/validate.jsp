<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%



//String url="jdbc:mysql://localhost:3306/juhu";
//String urname="root";
//String password="";
 String unm = request.getParameter("uname");
	String upass = request.getParameter("pwd");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/juhu","root","");
	PreparedStatement s = con.prepareStatement("select * from login where username = ? and password = ?");
	s.setString(1, unm);
	s.setString(2, upass);
	ResultSet rs = s.executeQuery();
	if(rs.next()){
		response.sendRedirect("home.jsp");
	}else{
		
		
		response.sendRedirect("index.jsp");
		out.println("Invalid details");
	}
	con.close();


%>
</body>
</html>
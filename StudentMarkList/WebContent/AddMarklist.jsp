<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String rn=request.getParameter("rno");
String name=request.getParameter("name");
String phy=request.getParameter("phy");
String chem=request.getParameter("chem");
String math=request.getParameter("maths");


	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/juhu","root","");
	PreparedStatement s = con.prepareStatement("insert into studentinfo values(?,?,?,?,?)");
	s.setString(1, rn);
	s.setString(2, name);
	s.setString(3, phy);
	s.setString(4, chem);
	s.setString(5, math);
	
	int rs = s.executeUpdate();
	System.out.println(rs);
	con.close();



%>
</body>
</html>
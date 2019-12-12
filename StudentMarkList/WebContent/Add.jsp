<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Mark Sheet Page</title>
</head>
<body  >
	<form action="AddMarklist.jsp" method="post" >
	<table align="center"  >
		<thead>
			<tr>
				<th colspan="2" >Add Mark Sheet Detail</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>RNO : </td>
				<td><input type="text" name="rno" /></td>
			</tr>
			<tr>
				<td>Student Name : </td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Physics : </td>
				<td><input type="text" name="phy" /></td>
			</tr>
			<tr>
				<td>Chemistry : </td>
				<td><input type="text" name="chem" /></td>
			</tr>
			<tr>
				<td>Maths : </td>
				<td><input type="text" name="maths" /></td>
			</tr>
			<tr>
				<td><a href="home.jsp" >Back</a></td>
				<td><input type="submit" value="Add" ></td>
			</tr>
		</tbody>
	</table>
	</form>
</body>

</html>
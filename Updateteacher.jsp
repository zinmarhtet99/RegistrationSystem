<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://localhost/javatest?user=root&password=root");

		String tid = request.getParameter("teacherid");

		HttpSession se = request.getSession(true);
		se.setAttribute("Teacherid", tid);

		
		Statement stmt=null;
		stmt=con.createStatement();
		String Strsql = "select teacherid,teachername,position,teacheremail,phone from teacher where teacherid="+ tid;
		ResultSet rs = stmt.executeQuery(Strsql);

		int teid;
		String tname, tpos,temail, ph;

		while (rs.next()) {
			teid = rs.getInt("teacherid");
			tname = rs.getString("teachername");
			tpos = rs.getString("position");
			temail= rs.getString("teacheremail");
			ph = rs.getString("phone");
	%>

	<form action="dbteacherupdate.jsp" method="get">
	<table>
		<tr>
		<td>TeacherName: </td>
		<td><input type="text" name="tname" value="<%=tname%>"></td></tr>
		<tr>
		<td>Position:</td>
		<td> <input type="text" name="pos" value="<%=tpos%>"></td></tr>
		<tr>
		<td>TeacherEmail:</td>
		<td> <input type="text" name="temail"
			value="<%=temail%>"></td></tr>
			<tr>
			<td> Phone: </td>
			<td><input
			type="tel" name="phone" value="<%=ph%>"></td></tr>
			<tr>
			<td colspan="2"> <input
			type="submit" value="Update"></td></tr>
			</table>
	</form>

	<%
		}
		rs.close();
		stmt.close();
		con.close();
	%>


</body>
</html>
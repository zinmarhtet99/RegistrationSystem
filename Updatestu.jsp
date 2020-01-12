<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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

		String stid = request.getParameter("stuid");

		HttpSession se = request.getSession(true);
		se.setAttribute("Stuid", stid);

		
		Statement stmt=null;
		stmt=con.createStatement();
		String Strsql = "select stuid,stuname,nrc,stuemail,gender,year,phone from students where stuid="+ stid;
		ResultSet rs = stmt.executeQuery(Strsql);

		int sid;
		String sname, snrc, semail, gender, year, ph;

		while (rs.next()) {
			sid = rs.getInt("stuid");
			sname = rs.getString("stuname");
			snrc = rs.getString("nrc");
			semail = rs.getString("stuemail");
			gender = rs.getString("gender");
			year = rs.getString("year");
			ph = rs.getString("phone");
	%>

	<form action="dbstuupdate.jsp" method="get">
	<table>
		<tr><td>StudentName: </td>
		<td><input type="text" name="sname" value="<%=sname%>"></td></tr>
		<tr><td>NRC:</td>
		<td> <input type="text" name="nrc" value="<%=snrc%>"></td></tr>
		<tr><td>StudentEmail:</td>
		<td> <input type="text" name="semail"
			value="<%=semail%>"></td></tr>
			<tr><td>Gender:</td>
			<td> <input type="text"
			name="gender" value="<%=gender%>"></td></tr>
			<tr><td>Year: </td>
			<td><input
			type="text" name="year" value="<%=year%>"> </td></tr>
			<tr><td>Phone:</td>
			<td> <input
			type="tel" name="phone" value="<%=ph%>"></td></tr>
			<tr><td colspan="2"> <input
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
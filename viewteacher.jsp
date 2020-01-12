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
		
		String str="select * from teacher";
		
		Statement stmt=null;
		stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(str);
		
		

		out.println("<table border='1'>");
		out.println("<tr><th>Teacher ID</th>");
		out.println("<th>Teacher Name</th>");
		out.println("<th>Position</th>");
		out.println("<th>Teacher Email</th>");
		out.println("<th>Phone</th>");
		out.println("<th></th><th></th></tr>");

		while (rs.next()) {
			int tid = rs.getInt("teacherid");
			String tname = rs.getString("teachername");
			String pos= rs.getString("position");
			String temail= rs.getString("teacheremail");
			String phone = rs.getString("phone");

			out.println("<tr><td>" + tid + "</td>");
			out.println("<td>" + tname + "</td>");
			out.println("<td>" + pos+ "</td>");
			out.println("<td>" + temail + "</td>");
			out.println("<td>" + phone + "</td>");
			out.println("<td><a href='Updateteacher.jsp?teacherid="+tid+"'>Update</a></td>");
			out.println("<td><a href='Deleteteacher.jsp?teacherid="+tid+"'>Delete</a></td></tr>");
		}

		out.println("</table>");
		rs.close();
		con.close();
		stmt.close();
		
		
		
		%>

</body>
</html>
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
		
		String str="select * from students";
		
		Statement stmt=null;
		stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(str);
		
		

		out.println("<table border='1'>");
		out.println("<tr><th>Student ID</th>");
		out.println("<th>Student Name</th>");
		out.println("<th>NRC</th>");
		out.println("<th>Student Email</th>");
		out.println("<th>Gender</th>");
		out.println("<th>Year</th>");
		out.println("<th>Phone</th>");
		out.println("<th></th><th></th></tr>");

		while (rs.next()) {
			int stid = rs.getInt("stuid");
			String stuname = rs.getString("stuname");
			String nrc = rs.getString("nrc");
			String stemail = rs.getString("stuemail");
			String gender = rs.getString("gender");
			String year = rs.getString("year");
			String phone = rs.getString("phone");

			out.println("<tr><td>" + stid + "</td>");
			out.println("<td>" + stuname + "</td>");
			out.println("<td>" + nrc + "</td>");
			out.println("<td>" + stemail + "</td>");
			out.println("<td>" + gender + "</td>");
			out.println("<td>" + year + "</td>");
			out.println("<td>" + phone + "</td>");
			out.println("<td><a href='Updatestu.jsp?stuid="+stid+"'>Update</a></td>");
			out.println("<td><a href='Deletestu.jsp?stuid="+stid+"'>Delete</a></td></tr>");
		}

		out.println("</table>");
		rs.close();
		con.close();
		stmt.close();
		
		
		
		%>
</body>
</html>
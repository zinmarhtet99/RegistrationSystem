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

		Integer tid = Integer.parseInt(request.getParameter("teacherid"));

		HttpSession se = request.getSession(true);
		se.setAttribute("teacherid", tid);

		
		Statement stmt=null;
		stmt=con.createStatement();
		String Strsql = "delete  from teacher where teacherid=?";
		PreparedStatement ps=con.prepareStatement(Strsql);
		ps.setInt(1,tid);
		ps.executeUpdate();
		

		
	%>
	<h1>Delete Teacher Information</h1>
	<a href="viewteacher.jsp">Delete Teacher</a>

</body>
</html>
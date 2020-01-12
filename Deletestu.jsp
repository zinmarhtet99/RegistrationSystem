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

		Integer stid = Integer.parseInt(request.getParameter("stuid"));

		HttpSession se = request.getSession(true);
		se.setAttribute("Stuid", stid);

		
		Statement stmt=null;
		stmt=con.createStatement();
		String Strsql = "delete  from students where stuid=?";
		PreparedStatement ps=con.prepareStatement(Strsql);
		ps.setInt(1,stid);
		ps.executeUpdate();
		

		
	%>
	<h1>Delete Student Information</h1>
	<a href="viewstu.jsp">Delete student</a>

</body>
</html>
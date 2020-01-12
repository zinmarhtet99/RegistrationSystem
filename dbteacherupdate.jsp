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
		HttpSession session1 = request.getSession(false);
		String tname= request.getParameter("tname");
		String pos= request.getParameter("pos");
		String temail= request.getParameter("temail");
		String ph=request.getParameter("phone");
		
		
		
		
		System.out.println(tname + "\n" + pos+"\n"+temail+"\n"+ph);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://localhost/javatest?user=root&password=root");
		Statement stmt = con.createStatement();

		String sql ="update teacher set teachername='" + tname + "',position='" + pos+"',teacheremail='"
		+temail+"',phone='"+ph
				+ "' where teacherid=" + session1.getAttribute("Teacherid");

		System.out.println(sql);
		stmt.executeUpdate(sql);
		con.close();
	%>
	<h1>Update Teacher Information</h1>
<a href="viewteacher.jsp">View All Teachers</a>

</body>
</html>
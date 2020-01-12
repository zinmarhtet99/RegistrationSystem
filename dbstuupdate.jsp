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
		String sname= request.getParameter("sname");
		String nrc= request.getParameter("nrc");
		String semail= request.getParameter("semail");
		String gender= request.getParameter("gender");
		String year= request.getParameter("year");
		String ph=request.getParameter("phone");
		
		
		
		
		System.out.println(sname + "\n" + nrc+"\n"+semail+"\n"+gender+"\n"+year+"\n"+ph);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://localhost/javatest?user=root&password=root");
		Statement stmt = con.createStatement();

		String sql ="update students set stuname='" + sname + "',nrc='" + nrc+"',stuemail='"
		+semail+"',gender='"+gender+"',year='"+year+"',phone='"+ph
				+ "' where stuid=" + session1.getAttribute("Stuid");

		System.out.println(sql);
		stmt.executeUpdate(sql);
		con.close();
	%>
	<h1>Update Student Information</h1>
<a href="viewstu.jsp">View All Students</a>	




</body>
</html>
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

		String sname=request.getParameter("stname");
		String pass=request.getParameter("stpass");
		String n=request.getParameter("nrc");
		String e=request.getParameter("stemail");
		String g=request.getParameter("gender");
		String y=request.getParameter("year");
		String p=request.getParameter("phone");
		
		
		String strsql ="insert into students(stuid,stuname,nrc,stuemail,gender,year,phone,studentpassword) values(null,?,?,?,?,?,?,?)";
		Statement stmt = con.createStatement();
		PreparedStatement ps=con.prepareStatement(strsql);
		ps.setString(1,sname);
		ps.setString(2,n);
		ps.setString(3,e);
		ps.setString(4,g);
		ps.setString(5,y);
		ps.setString(6,p);
		ps.setString(7,pass);
		ps.executeUpdate();
		
		String str="select * from students where stuname='"+sname+"'";
		ResultSet rs=stmt.executeQuery(str);
		
		

		out.println("<table border='1'>");
		out.println("<tr><th>Student ID</th>");
		out.println("<th>Student Name</th>");
		out.println("<th>Studnet Password");
		out.println("<th>NRC</th>");
		out.println("<th>Student Email</th>");
		out.println("<th>Gender</th>");
		out.println("<th>Year</th>");
		out.println("<th>Phone</th></tr>");

		while (rs.next()) {
			int stid = rs.getInt("stuid");
			String stuname = rs.getString("stuname");
			String nrc = rs.getString("nrc");
			String stemail = rs.getString("stuemail");
			String gender = rs.getString("gender");
			String year = rs.getString("year");
			String phone = rs.getString("phone");
			String stpass=rs.getString("studentpassword");

			out.println("<tr><td>" + stid + "</td>");
			out.println("<td>" + stuname + "</td>");
			out.println("<td>"+stpass+"</td>");
			out.println("<td>" + nrc + "</td>");
			out.println("<td>" + stemail + "</td>");
			out.println("<td>" + gender + "</td>");
			out.println("<td>" + year + "</td>");
			out.println("<td>" + phone + "</td></tr>");
		}

		out.println("</table>");
		rs.close();
		con.close();
		stmt.close();
	%>


</body>
</html>
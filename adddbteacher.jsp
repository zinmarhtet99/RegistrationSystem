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

		String tname=request.getParameter("tname");
		String tpass=request.getParameter("tpass");
		String p=request.getParameter("position");
		String e=request.getParameter("temail");
		String ph=request.getParameter("phone");
		
		
		String strsql ="insert into teacher(teacherid,teachername,position,teacheremail,phone,teacherpassword) values(null,?,?,?,?,?)";
		Statement stmt = con.createStatement();
		PreparedStatement ps=con.prepareStatement(strsql);
		ps.setString(1,tname);
		ps.setString(2,p);
		ps.setString(3,e);
		ps.setString(4,ph);
		ps.setString(5,tpass);
		ps.executeUpdate();
		
		String str="select * from teacher where teachername='"+tname+"'";
		PreparedStatement pst=con.prepareStatement(str);
		ResultSet rs=pst.executeQuery();
		
		

		out.println("<table border='1'>");
		out.println("<tr><th>Teacher ID</th>");
		out.println("<th>Teacher Password</th>");
		out.println("<th>Teacher Name</th>");
		out.println("<th>Position</th>");
		out.println("<th>Teacher Email</th>");
		out.println("<th>Phone</th></tr>");

		while (rs.next()) {
			int tid = rs.getInt("teacherid");
			String teachername = rs.getString("teachername");
			String pos= rs.getString("position");
			String temail = rs.getString("teacheremail");
			String phone = rs.getString("phone");
			String tpwd=rs.getString("teacherpassword");

			out.println("<tr><td>" + tid + "</td>");
			out.println("<td>" + teachername + "</td>");
			out.println("<td>"+tpwd+"</td>");
			out.println("<td>" + pos+ "</td>");
			out.println("<td>" + temail + "</td>");
			out.println("<td>" + phone + "</td></tr>");
		}

		out.println("</table>");
		rs.close();
		con.close();
		stmt.close();
	%>


</body>
</html>
<%@page import="java.io.PrintWriter"%>
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
boolean result=false;
String str="jdbc:mysql://localhost/javatest?user=root&password=root";
Connection con=null;
Statement stmt=null;
ResultSet rs=null;


Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(str);
stmt=con.createStatement();


String name=request.getParameter("name");
String pass=request.getParameter("pwd");


String str1="select * from admin where username='"+name+"' and password='"+pass+"'";
rs=stmt.executeQuery(str1);

while(rs.next()){
	result=true;
}

if(result){
	RequestDispatcher rd=request.getRequestDispatcher("addall.jsp");
	rd.forward(request,response);
}else{
	out.println("Login Failed!!!");
	RequestDispatcher red=request.getRequestDispatcher("add.jsp");
	red.include(request,response);
}

%>
</body>
</html>
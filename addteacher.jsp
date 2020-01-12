<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="adddbteacher.jsp" method="post">
		<table>
			<tr>
				<td>TeacherName</td>
				<td><input type="text" name="tname"></td>
			</tr>
			<tr>
				<td>TeacherPassword</td>
				<td><input type="password" name="tpass"></td>
			</tr>
			<tr>
				<td>Position</td>
				<td><input type="text" name="position"></td>
			</tr>
			<tr>
				<td>Teacher Email</td>
				<td><input type="text" name="temail"></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add"></td>
			</tr>
		</table>
	</form>

</body>
</html>
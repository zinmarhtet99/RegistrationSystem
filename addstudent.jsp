<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="adddbstudent.jsp" method="post">
		<table>
			<tr>
				<td>StudentName</td>
				<td><input type="text" name="stname"></td>
			</tr>
			<tr>
				<td>StudentPassword</td>
				<td><input type="password" name="stpass"></td>
			</tr>
			<tr>
				<td>NRC</td>
				<td><input type="text" name="nrc"></td>
			</tr>
			<tr>
				<td>Student Email</td>
				<td><input type="text" name="stemail"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="female">Female</td>
			</tr>
			<tr>
				<td>Year</td>
				<td><input type="text" name="year"></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="tel" name="phone"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add"></td>
			</tr>
		</table>
	</form>
</body>
</html>
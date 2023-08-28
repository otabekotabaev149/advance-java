<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope = "session"></jsp:useBean>
<form action="getProperty.jsp">
	First name: <input type="text" name="firstname" value='<jsp:getProperty property="firstName" name="user"/>'><br/>
	Last name: <input type="text" name="lastname" value='<jsp:getProperty property="lastName" name="user"/>'><br/>
	<input type="submit" value="submit">
</form>
</body>
</html>
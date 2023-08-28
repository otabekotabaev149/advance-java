<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String URL = "<a href='http://studyeasy.org'>Home</a>";
	ServletContext context = getServletContext();
	context.setAttribute("url", URL);
	session.setAttribute("name", "Otabek");
%>
${name}
<br/>
${url}
</body>
</html>
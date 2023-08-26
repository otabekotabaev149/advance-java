<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello JSP</h1>

<%
int x = 25;
out.println(x);

if(x > 10){
	out.print("x is greater than 10");
}
else {
	out.print("x is not greater than 10");
}

for(int i=0;i<10;i++){
	out.print("<br/>");
	out.print(i);
}
%>

<%--	
	this is jsp comment
	response.sendRedirect("http://studyeasy.org");
--%>

<br>
<%= x %>
</body>
</html>
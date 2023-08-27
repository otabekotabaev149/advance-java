<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Other functions</title>
</head>
<body>

<% String str="StudyEasy.org"; %>

${fn:toUpperCase(str) }
${fn:toLowerCase(str) }<br/>
${fn:indexOf(str, "u") }<br/>
${fn:replace(str, "StudyEasy", "SuperEasy") }<br/>
${fn:substring(str, 2, 5) }<br/>
${fn:substringBefore(str, "Easy") }<br/>
${fn:substringAfter(str, "Easy") }<br/>

</body>
</html>
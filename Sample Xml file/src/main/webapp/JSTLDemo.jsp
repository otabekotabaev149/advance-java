<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
	<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<c:import url="/Users.xml" var="XMLFile"/>
	<x:parse xml="${XMLFile}" var="XMLdoc"/>
	
	Name: <x:out select="$XMLdoc/users/user[1]/name" /><br/>
	Age: <x:out select="$XMLdoc/users/user[1]/age" /><br/>
	Gender: <x:out select="$XMLdoc/users/user[1]/gender" /><br/>
	
	<table border=1>
		<x:forEach select="$XMLdoc/users/user">
			<tr>
				<x:choose>
					<x:when select="gender='Femage'">
						<td><i><b> Name:<x:out select="name"/></b></i></td>
						<td><i><b> Age:<x:out select="age"/></b></i></td>
						<td><i><b> Gender:<x:out select="gender"/></b></i></td>
					</x:when>
					<x:otherwise >
						<td> Name:<x:out select="name"/></b></i></td>
						<td> Age:<x:out select="age"/></td>
						<td> Gender:<x:out select="gender"/></td>
					</x:otherwise>
					
					<x:if select="age>20">
						<td> Name:<x:out select="name"/></td>
						<td> Age:<x:out select="age"/></td>
						<td> Gender:<x:out select="gender"/></td>
						<br/>
					</x:if>
				</x:choose>
			</tr>
		</x:forEach>
	</table>
	
	
</body>
</html>
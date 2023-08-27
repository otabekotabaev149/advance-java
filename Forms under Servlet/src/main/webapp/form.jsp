<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form demo</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/Controller" method="get">
	Full name<input type="text" name="name" required><br/>
	Gender<input type="radio" name="gender" value="male" checked="checked">Male
	      <input type="radio" name="gender" value="female">Female <br/>
	Languages know <input type="checkbox" name="language" value="English">English
					<input type="checkbox" name="language" value="Russian">Russian
					<input type="checkbox" name="language" value="Uzbek">Uzbek <br>
	Country: <select name="country">
				<option value="Uzbekistan">Uzbekistan</option>
				<option value="Russia">Russia</option>
				<option value="Poland">Poland</option>
				<option value="Usa">USA</option>
				<option value="Germany">Germany</option>
			 </select><br/>
			 <input type="submit" value="submit">
</form>
</body>
</html>
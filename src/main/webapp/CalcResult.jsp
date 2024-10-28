<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calc Result</title>
</head>
<body>
	<%
		Integer ans = (Integer)request.getAttribute("ans");
	%>
	
	Ans = <%=ans %>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teste title</title>
</head>
<body>
	<%
		out.print("Aula1");
		out.print("<div>exemplo</div>");
		for (int  i=0; i<10; i++){
			out.print("<div>"+i+"</div>");
		}
	%>

</body>
</html>
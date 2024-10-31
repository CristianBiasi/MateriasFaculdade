<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabuadas</title>
<style>
	.linhaTabuadas {
	display:flex;
	justify-content: space-between;
	align-items: center;
	}
</style>
</head>
<body>
	<%
		out.print("<h1>Tabuadas</h1>");
		out.print("<div class='linhaTabuadas'>");
		for (int i = 1; i <= 10; i++){
			out.print("<div>");
			out.print("<div>Tabuada do " + i + "</div>");
			for (int j = 0; j <= 10; j++){
				out.print("<div>" + i + " X " + j + " = " + (i*j)+ "</div>");
			}
			out.print("</div>");
		}
		out.print("</div>");
		
	%>
</body>
</html>
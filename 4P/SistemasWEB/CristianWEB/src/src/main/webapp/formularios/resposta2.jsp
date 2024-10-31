<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jogos</title>
</head>
<body>
	<%
		String time1 = request.getParameter("time1");
		int gols1 = Integer.parseInt(request.getParameter("gols1"));
		String time2 = request.getParameter("time2");
		int gols2 = Integer.parseInt(request.getParameter("gols2"));
		
		
		if (gols1 > gols2) {
			out.print("O time " + time1 + " foi campeão!");
		} else if (gols1 < gols2) {
			out.print("O time " + time2 + " foi campeão!");
		} else {
			out.print("O jogo ficou empatado!");
		}
		
	%>
	

</body>
</html>
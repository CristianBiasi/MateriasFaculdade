<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Controle</title>
</head>
<body>
	<%
	
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		if (usuario.equals("admin") && senha.equals("123")){
			response.sendRedirect("admin.jsp");
		} else if (usuario.equals("ze") && senha.equals("123")){
			response.sendRedirect("normal.jsp");
		}else {
			response.sendRedirect("invalido.jsp");
		}
		
	
		
	%>
	
	

</body>
</html>
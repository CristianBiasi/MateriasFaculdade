<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="index.jsp" method="POST">
    N1: <input type="text" name="n1">
    <br />
    N2: <input type="text" name="n2" />
    <br>
    <input type="submit" value="Calcular Média" />
</form>

<% 
    String paramN1 = request.getParameter("n1");
    String paramN2 = request.getParameter("n2");
    
    if (paramN1 != null && paramN2 != null) {
        try {
            double n1 = Double.parseDouble(paramN1);
            double n2 = Double.parseDouble(paramN2);
            double media = (n1 + n2) / 2;
            out.println("<h2>Média: " + media + "</h2>");
        } catch (NumberFormatException e) {
            out.println("<h2>Por favor, insira números válidos.</h2>");
        }
    }
%>

</body>
</html>
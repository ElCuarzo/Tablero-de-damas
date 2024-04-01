<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tablero de damas</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<%
	int alto = Integer.parseInt(request.getParameter("alto"));
	int ancho = Integer.parseInt(request.getParameter("ancho"));
	%>
	
	<table>
		<%
		for (int i = 0; i<alto; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j<ancho; j++) {
			%>
			
			<%
				String color = (i + j) % 2 == 0 ? "blanco" : "negro";
			%>
			
				<td class="<%=color%>"></td>
				
			<%
				}
			%>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
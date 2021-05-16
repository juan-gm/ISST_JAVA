<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Huesped</title>
</head>
<body>

	<h2>Datos del Huesped</h2>
	<table border="1">
		<tr>

			<th>Name</th>
			<th>Surname</th>
			<th>Email</th>
			<th>DNI</th>
			<th>roomNumber</th>
			<th>toPayAccount</th>
			<th>creditCard</th>
			<th>telephoneNumber</th>
			<th>Siguiente acción</th>
		</tr>
		<tr>
			<td>${huesped.name}</td>
			<td>${huesped.surname}</td>
			<td>${huesped.email}</td>
			<td>${huesped.roomNumber}</td>
			<td>${huesped.creditCard}</td>
			<td>${huesped.telephoneNumber}</td>
		</tr>	
			<%-- <td><c:if test="${huesped.status > 3}">${huesped.title}</c:if></td> --%>
			<!-- <td> -->

			<%-- <c:if test="${huesped.status == 3}"> --%>
			<!--   <form action="FormSubeMemoriaServlet" method="post" enctype="multipart/form-data"> -->
			<%--         <input type="hidden" name="huespedemail" value="${huesped.email}" /> --%>
			<!--             <input type="file" name="file" /> -->
			<!--         <input type="submit">Subir memoria</input> -->
			<!--   </form> -->
			<%-- </c:if> --%>
			<%-- <c:if test="${huesped.status > 3}"> --%>
			<!--   <form action="FormBajaMemoriaServlet" method="get"> -->
			<%--         <input type="hidden" name="huespedemail" value="${huesped.email}" /> --%>
			<!--         <button type="submit">Descargar memoria</button> -->
			<!--   </form> -->
			<%-- </c:if> --%>
	</table>
</body>
</html>
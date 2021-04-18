<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido Admin</title>
</head>
<body>

<table border="1">
<tr>
<th>Name</th>
<th>Surname</th>
<th>Email</th>
<th>Password</th>
<th>DNI</th>
<th>roomNumber</th>
<th>creditCard</th>
<th>telephoneNumber</th>
<!-- <th>Solicitudes</th> -->
<th>Actualizar</th>
</tr>
<c:forEach items="${huespedes}" var="huespedi">
<form action="FormAdminServlet" method="post">
        <tr>
        <td><input type="text" id="name" name="name" value="${huespedi.name}" /></td>
        <td><input type="text" id="surname" name="surname" value="${huespedi.surname}" /></td>
        <td><input type="text" id="email" name="email" value="${huespedi.email}" />${tfgi.email}</td>
        <td><input type="password" id="password" name="password" value="${huespedi.password}" /></td>
        <td><input type="number" id="dni" name="dni" value="${huespedi.dni}" /></td>
        <td><input type="number" id="roomNumber" name="roomNumber" value="${huespedi.roomNumber}" min="0" max="599"/></td>
        <td><input type="number" id="creditCard" name="creditCard" value="${huespedi.creditCard}" max="9999999999999999" /></td>
        <td><input type="number" id="telephoneNumber" name="telephoneNumber" value="${huespedi.telephoneNumber}"/></td>
<%--    <td><input type="checkbox" id="solicitudes" name="Solicitudes" value="${huespedi.solicitudes}"/></td> --%>
        <td><input type="submit">Actualizar valores</input></td>
        </tr>
</form>
</c:forEach>
</table>

<h2>Crear Huesped</h2>
<form action="FormCreaTFGServlet">
        <input type="email" id="email" name="email" placeholder="Email">
        <input type="password" id="password" name="password" placeholder="Password">
        <input type="text" id="name" name="name" placeholder="Nombre y apellidos">
        <input type="text" id="titulo" name="titulo" placeholder="Título del proyecto">
        <input type="email" id="profesor" name="profesor" placeholder="Profesor tutor">
        <button type="submit">Registrar</button>
</form>


<h2>Juan tiene niños pequeños secuestrados en su casa</h2>



<%@ include file="FormLogout.jsp"%>


</body>
</html>
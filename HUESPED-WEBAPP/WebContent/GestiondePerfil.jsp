<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta charset="ISO-8859-1">
<html><head>
<meta charset="utf-8">
    <title>Concierge</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body { --primary: #6200ee; --secondary: #29b6f6; margin: 0px; }
        * {font-family: 'Roboto', sans-serif;}
        button { 
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            text-decoration: none;
            margin: 2px;
            color: var(--primary);
            background: white;
            border: 1px solid var(--primary);
            height: 20px;
            font-size: 9px;
            text-transform: uppercase;
            cursor: pointer;
            transition: ease-in 0.2s all;
            padding: 0 8px 0 8px;
        }
        div#main {padding: 10px;}
        input {margin-bottom: 5px; margin-top: 2px; padding: 4px; font-size: 12px; }
        h1 {background: var(--primary); color: white; font-weight: 300; text-transform: uppercase; font-size: 20px; margin: 0px; padding: 15px;}
        h2 { margin-block-start: 0px; margin-block-end: 10px; font-size: 20px;  color: var(--primary);}
        h6 { margin-block-start: 0px; margin-block-end: 10px; font-size: 10px;  color: var(--primary);}
        button:hover { background: var(--primary); color: white; }
        .Primeros {
  display: flex;
  justify-content: space-between;
  border: 5px outset purple;
  background-color: lightblue;
  text-align: center;
  }
  .Subvista {
  display: inline-block;
/*   justify-content: space-between; */
  border: 5px outset purple;
  background-color: lightblue;
  text-align: center;
  }
table {
    border-collapse: collapse;
    border: 1px solid #843EBE;
  }
  
  td,
  th {
    padding: 10px;
  }
  
   th {
    background: #fff;
    color: #843EBE;
    text-transform: uppercase;
  }
    td {
    text-align: center;
    border-bottom: 2px solid #111;
    color: #843EBE;
    font-size: 18px;
  }

    </style>
<title>Bienvenido Admin</title>
</head>
<!-- <body> -->

<!-- <table border="1"> -->
<!-- <tr> -->
<!-- <th>Name</th> -->
<!-- <th>Surname</th> -->
<!-- <th>Email</th> -->
<!-- <th>Password</th> -->
<!-- <th>DNI</th> -->
<!-- <th>roomNumber</th> -->
<!-- <th>creditCard</th> -->
<!-- <th>telephoneNumber</th> -->
<!-- <!-- <th>Solicitudes</th> -->
<!-- <th>Actualizar</th> -->
<!-- </tr> -->
<%-- <c:forEach items="${huespedes}" var="huespedi"> --%>
<!-- <form action="FormGestiondePerfil" method="post"> -->
<!--         <tr> -->
<%--         <td><input type="text" id="name" name="name" value="${huespedi.name}" /></td> --%>
<%--         <td><input type="text" id="surname" name="surname" value="${huespedi.surname}" /></td> --%>
<%--         <td><input type="text" id="email" name="email" value="${huespedi.email}" />${tfgi.email}</td> --%>
<%--         <td><input type="password" id="password" name="password" value="${huespedi.password}" /></td> --%>
<%--         <td><input type="number" id="dni" name="dni" value="${huespedi.dni}" /></td> --%>
<%--         <td><input type="number" id="roomNumber" name="roomNumber" value="${huespedi.roomNumber}" min="0" max="599"/></td> --%>
<%--         <td><input type="number" id="creditCard" name="creditCard" value="${huespedi.creditCard}" max="9999999999999999" /></td> --%>
<%--         <td><input type="number" id="telephoneNumber" name="telephoneNumber" value="${huespedi.telephoneNumber}"/></td> --%>
<%-- <%--    <td><input type="checkbox" id="solicitudes" name="Solicitudes" value="${huespedi.solicitudes}"/></td> --%>
<!--         <td><input type="submit">Actualizar valores</input></td> -->
<!--         </tr> -->
<!-- </form> -->
<%-- </c:forEach> --%>

<!-- </table> -->

<%-- <%@ include file="Volver.jsp"%> --%>


<!-- </body> -->
<body>
	<h1>Bienvenido a tu gestion de perfil</h1>
	<br>
	<h2>Aqui puedes modificar tus datos.</h2>
	<h6>Te dejamos un cuadro en blanco para que puedas realizar tu
		solicitud. Se realizara el cambio automaticamente.</h6>
<br>

<textarea id="Solicitud" rows="10" cols="80" placeholder="Solicite aqui" 
<%--                         value="${huesped.solicitud.servPersonalizado}" --%>
                        > </textarea>
	<br>
	
  <input type="button" name="insert" id="insert" value="ENVIAR"  />
  
<script type="text/javascript">
    document.getElementById('insert').onclick = function() {
        var txt  ='',
            area = document.getElementById('Solicitud');

        area.value = "";
    }
</script>

	<%@ include file="Volver.jsp"%>

</body>
</html>
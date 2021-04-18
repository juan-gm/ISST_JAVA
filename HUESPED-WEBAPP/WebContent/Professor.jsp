<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%> 
<!-- <!DOCTYPE html> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<!doctype html>
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

<!--     <script type="text/javascript"> -->
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido huesped</title>
</head>
<body>
 <h1>Bienvenido a tu propia interfaz de servicios. </h1>
 <br>
 <h2>Aqui podras pedir servicios para mayor comodidad durante su estancia</h2>
 <br>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Email</th>
			<th>DNI</th>
			<th>Numero de Habitacion</th>
			<th>Numero de telefono</th>
		</tr>
		<c:forEach items="${huespedes}" var="huespedi">
			<tr>
				<td>${huespedi.name}</td>
				<td>${huespedi.surname}</td>
				<td>${huespedi.email}</td>
				<td>${huespedi.dni}</td>
				<td>${huespedi.roomNumber}</td>
				<td>${huespedi.telephoneNumber}</td>
			</tr>

		</c:forEach>

	</table>
	
 <br>
 <br>
 

	<div class="Primeros">
		<div class="Subvista">
			<form action="FormGestiondePerfil">
				<button type="submit">Gestion de perfil</button>
				<img src="Imagenes/gestiondeperfil.jfif" width=300 height=150>
			</form>
		</div>

		<div class="Subvista">
			<form action="FormServicioHabitaciones">
				<button type="submit">Servicio de Habitaciones</button>
				<img src="Imagenes/Serviciodehabitaciones.jpg" width=300 height=150>

			</form>
		</div>

		<div class="Subvista">
			<form action="FormTransporte">
				<button type="submit">Servicio de transporte</button>
				<img src="Imagenes/transporte.jpg" width=300 height=150>

			</form>
		</div>


	</div>

	<div class="Primeros">
		<div class="Subvista">

			<form action="FormServiciodeOcio">
				<button type="submit">Servicios de ocio</button>
				<img src="Imagenes/serviciodeocio.jfif" width=400 height=200>

			</form>
		</div>


		<div class="Subvista">

			<form action="FormServicioPersonalizado">
				<button type="submit">Servicio personalizado</button>
				<img src="Imagenes/Serviciopersonalizado.jpg" width=400 height=200>

			</form>
		</div>
		<div class="Subvista">
			<%@ include file="FormLogout.jsp"%>
			<img src="Imagenes/logout.png" width=400 height=200>

		</div>
	</div>





</body>
</html>


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
        body { --primary: black; --secondary: #29b6f6; margin: 0px; }
        * {font-family: 'Roboto', sans-serif;}
        button { 
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            text-decoration: none;
            margin: 2px;
            color: var(--primary);
            background: white;
            border: black;
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
       /*  button:hover { background: var(--primary); color: white; }  */
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
  .FotoPrincipal{
    text-align: center;
    
  }.classForm{
  	width: 100;
  	height: 100
}.letral{
    text-align: center;
  font: small-caps bold 120% garamon;
}
div.derecha{
float:centre;

}
div.izquierda{
float:left;
width:100 px;
height:100 px;
 text-aling:centre
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
  .centrado{margin: 1rem;
  
  padding: 1rem;
  text-aling:centre}

    </style>

<!--     <script type="text/javascript"> -->
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido huesped</title>
</head>
<body>
 <h1 class="FotoPrincipal">Bienvenido al servicio de Ocio </h1>
 <br>
 <h2 class="FotoPrincipal">Aqui puedes consultar las diferentes actividades a realizar en tu tiempo libre.</h2>
 <br>
	
 <br>
 <br>

<div class="FotoPrincipal">
<div class="izquierda">
	<img src="Imagenes/BLANCO.png" width=270 height=270 alt="x"/></div>
	
		<div class="izquierda">
			<button
				onclick="window.location.href='https://www.eltenedor.es/?geo=328022&rt=&stt=&m=23233&supbk=1&cc=16774-c1d&supci=864203706&supsc=s&supai=401293412840&supap=&supdv=c&supnt=g&supti=kwd-340762425787&suplp=9061051&supli=&gclid=Cj0KCQjwse-DBhC7ARIsAI8YcWLHROjxsjOOzDdWRJGBdXZvBjQx-8sOJtYEKzJ7A8eQBkhHkoiNx44aAi2MEALw_wcB'"><img src="Imagenes/TENEDOR.png" width=200 height=200 alt="x"/></button>
			<!-- 				<button type="submit"">UBER</button> -->
			
			
		</div>

		<div class="izquierda">
			<button
				onclick="window.location.href='https://www.ticketmaster.es/'"><img src="Imagenes/TICKET.png" width=200 height=200 alt="x"/></button>
			

		</div>

		<div class="izquierda">
			<button
				onclick="window.location.href='https://www.esmadrid.com/visitas-guiadas-por-madrid'"><img src="Imagenes/MUSEO.png" width=200 height=200 alt="x"/></button>
			
		</div>

	<div class="izquierda">
	<img src="Imagenes/BLANCO.png" width=190 height=190 alt="x"/></div>
	</div>
<br><br><br><br>
<div class="izquierda">
	<img src="Imagenes/BLANCO.png" width=260 height=260 alt="x"/></div>
	
<div class="izquierda">

	<form action="FormVolver">
     
        <div class= FotoPrincipal>
<br>

        <button type="submit" ><img src="Imagenes/VOLVER.png" width=190 height=190 alt="x"/></button></div>
</form>
</div>
</body>
</html>
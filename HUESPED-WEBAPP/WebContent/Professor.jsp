<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
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
            border: white;
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
/*         button:hover { background: var(--primary); color: white; } */
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
<title>Bienvenido a </title>
</head>
<body>
<h1 class= FotoPrincipal>Bienvenido a Concierge</h1>
<br><br>
<h2 class= FotoPrincipal>Disfruta de nuestros servicios</h2>
<br><br>
<!-- <div class="FotoPrincipal"> -->
<!-- <!-- <h2>Acceso</h2> -->
<!-- <form action="FormLoginServlet"> -->
<!--         <input type="text" name="email" placeholder="Email"> -->
<!--         <input type="password" name="password" placeholder="Password"> -->
<!--         <div class= FotoPrincipal> -->
<!-- <br> -->
<!--         <button type="submit" ><img src="Imagenes/BotonLoginBueno.jpg" width=200 height=200 alt="x"/></button></div> -->
<!-- </form> -->
<!-- </div> -->

<!-- <h2>Solicitud de creación de perfil de Huésped</h2> -->
<!-- <form action="FormCreaHuespedServlet"> -->
<!--         <input type="email" id="email" name="email" placeholder="Email"> -->
<!--         <input type="password" id="password" name="password" placeholder="Password"> -->
<!--         <input type="text" id="name" name="name" placeholder="Nombre">        -->
<!--         <input type="text" id="surname" name="surname" placeholder="Apellidos"> -->
<!--         <input type="number" id="dni" name="dni" placeholder="DNI"> -->
<!--         <input type="number" id="roomNumber" name="roomNumber" placeholder="Room Number"> -->
<!--         <input type="number" id="creditCard" name="creditCard" placeholder="Credit Card"> -->
<!--         <input type="tel" id="telephoneNumber" name="telephoneNumber" placeholder="Telephone Number"> -->
<!--         <button type="submit">Registrar</button> -->
<!-- </form> -->
<!-- <br> -->

<div class="centre">
<div class="izquierda"><img src="Imagenes/BLANCO.png" width=310 height=310 alt="x"/></div>
<div class="izquierda">
<form action="FormGestiondePerfil" class="classForm">
     
      <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/PERFIL.jpg" width=190 height=190 alt="x"/></button></div>
</form>

<form action="FormServicioHabitaciones"class="classForm" >
     
       <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/Servicio de Habitaciones.png" width=190 height=190 alt="x"/></button></div>
</form>
</div>


<div class= "izquierda">
<form action="FormServicioPersonalizado">
     
        <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/Personalizado.png" width=190 height=190 alt="x"/></button></div>
</form>

<form action="FormLogoutServlet">
     
        <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/LOGOUTDEFINITIVOO.png" width=190 height=190 alt="x"/></button></div>
</form>


</div>

<div class="izquierda">
<form action="FormServiciodeOcio">
     
        <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/OCIO.jpg" width=190 height=190 alt="x"/></button></div>
</form>

<form action="FormTransporte">
     
        <div class= FotoPrincipal>
<br>
        <button type="submit" ><img src="Imagenes/TRANSPORTE.png" width=200 height=200 alt="x"/></button></div>
</form>
</div>

</div>










<!-- <div><form action="FormGestiondePerfil"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=10 height=10 alt="x"/></button></form> -->
<!--  <form action="FormServicioHabitaciones"> <button type="submit" ><img src="Imagenes/Estancia.jpg" width=10 height=10 alt="x"/></button></form> -->
<!--  </div> -->
<!--  <div> -->
<!--  <form action="FormServicioPersonalizado"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=200 height=200 alt="x"/></button></form> -->
<!--  <form action="FormLogoutServlet"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=200 height=200 alt="x"/></button></form> -->
<!--  <form action="FormServicioHabitaciones"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=200 height=200 alt="x"/></button></form> -->
<!--  </div> -->
<!--  <div> -->
<!--  <form action="FormServiciodeOcio"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=200 height=200 alt="x"/></button></form>  -->
<!--  <form action="FormTransporte"> <button type="submit" ><img src="Imagenes/GestionDePerfeil.jpg" width=200 height=200 alt="x"/></button></form></div> -->
<!-- <h4 class= letral>"Esta todo tranquilo. Tan tranquilo que casi se pueden oir los sueños de otras personas..." -->
<!-- <h4 class= FotoPrincipal>Gayle Forman.</h4> -->
<!-- </h4><br> -->
</body>
</html>


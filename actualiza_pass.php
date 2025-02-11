<?php
session_start();


if (!isset($_SESSION['usuario'])) {
  header("Location: login.php"); // Redirigir si no hay sesión
  exit;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sis. Vales</title>
  <link rel="stylesheet" href="./css/login.css">

</head>

<body class="contenedor fondo">

  <div class="elemento cambio_pass" id="contenedor_2">
    <form id="frm_log">
      <fieldset class="frm_recuadro">
        <legend>Cambio Contraseña</legend>

        <div class="frm_contenedor">
          <input class="frm_elemento" type="text" name="usuario" id="usuario_" placeholder="Ingrese su Usuario" require autofocus>

          <input class="frm_elemento" type="text" name="dni_pass" id="dni_pass" placeholder="Ingrese su DNI" require>

          <input class="frm_elemento" type="password" name="pass_1" id="contrasena1" placeholder="Ingrese Contraseña Nueva" require>

          <input class="frm_elemento" type="password" name="pass_2" id="contrasena2" placeholder="Repita Contraseña Nueva" require>

          <button id="btn2" class="frm_elemento btn" type="button">Guardar</button>
        </div>

      </fieldset>
    </form>
  </div>

</body>

</html>
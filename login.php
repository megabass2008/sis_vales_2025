<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sis. Vales</title>
  <link rel="stylesheet" href="./css/login.css">
  <script src="./js/login.js" defer></script>

</head>

<body class="contenedor fondo">

  <div class="elemento" id="elemento">
    <form id="frm_login">
      <fieldset class="frm_recuadro">
        <legend>Login</legend>
        <div class="frm_contenedor">
          <input class="frm_elemento" type="text" name="usuario" id="usuario" placeholder="Usuario" require autofocus>

          <input class="frm_elemento" type="password" name="contrasena" id="contrasena" placeholder="Contraseña" require>

          <button id="btn" class="frm_elemento btn" type="button">Iniciar Sesion</button>
        </div>
      </fieldset>

    </form>
  </div>

</body>

</html>
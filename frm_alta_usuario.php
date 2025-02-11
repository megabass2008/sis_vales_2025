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
  <link rel="stylesheet" href="./css/alta_beneficiario.css">
  <script src="./js/carga_rol.js" defer></script>
  <script src="./js/carga_usuario.js" defer></script>

  <title>Document</title>
</head>

<body>
  <?php
  include './encabezado.php';
  ?>
  <div class="titulo_frm">
    <h2>Alta Usuario</h2>
  </div>

  <div class="contenedor">

    <form class="area_frm" id="formulario" method="post">

      <div class="etiqueta"><label for="apellido_nombre">Apellido y Nombre</label></div>
      <div><input type="text" name="apellido_nombre" id="apellido_nombre"></div>

      <div class="etiqueta"><label for="dni">DNI</label></div>
      <div><input type="number" name="dni" id="dni"></div>

      <div class="etiqueta"><label for="usuario">Usuario</label></div>
      <div><input type="text" name="cliente" id="usuario"></div>

      <div class="etiqueta"><label for="contraseña">Contraseña</label></div>
      <div><input type="text" name="contrasena" id="contraseña"></div>

      <div class="etiqueta"><label for="rol">Rol</label></div>
      <div><select name="rol_id" id="rol"></select></div>

      <div class="etiqueta"><label for="">Activo</label></div>
      <div>
        <select name="activo" id="">
          <option value="1">SI</option>
          <option value="0">NO</option>
        </select>
      </div>
      <div></div>

      <div>
        <button id="guardar" class="guardar">GUARDAR</button>
        <button id="cancelar" class="cancelar">Cancelar</button>
      </div>

    </form>

    <div class="area_listado">

      <div class="ult_agregado">
        <div>
          <span class="agregado">Ultimo agregado</span>
        </div>
        <div class="div_agregado">
        </div>
      </div>

      <div class="lista">
        <div class="inp_buscador">
          <input class="inp_2" type="text" name="" id="" placeholder="Ingrese: Apellido o Nombre o DNI o Prefijo o Municipio">
        </div>
        <div class="paginador">
        </div>
      </div>
      <div>
        <table class="tabla">
          <thead class="th_lista">
            <tr>
              <td class="td_ayn">Apellido y Nombre</td>
              <td class="td_dni">DNI</td>
              <td class="td_contac">Usuario</td>
              <td class="td_prefijo">Rol</td>
              <td class="td_accion">Activo</td>
            </tr>
          </thead>

        </table>
      </div>

    </div>
  </div>

</body>

</html>
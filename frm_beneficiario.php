<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/alta_beneficiario.css">

  <script src="./js/carga_municipio.js"></script>
  <script src="./js/carga_prefijo.js"></script>



  <title>Document</title>
</head>

<body>
  <?php
  include './encabezado.php';
  ?>
  <div class="titulo_frm">
    <h2>Alta Beneficiario</h2>
  </div>

  <div class="contenedor">

    <form class="area_frm" id="formulario" enctype="multipart/form-data" method="post">

      <div class="etiqueta"><label for="apellido_nombre">Apellido y Nombre</label></div>
      <div><input type="text" name="apellido_nombre" id="apellido_nombre" placeholder="Apellido y Nombre sin comas(,)"></div>

      <div class="etiqueta"><label for="dni">DNI</label></div>
      <div><input type="number" name="dni" id="dni" placeholder="DNI sin puntos(.)"></div>

      <div class="etiqueta"><label for="telefono">Nro de Contacto</label></div>
      <div><input type="number" name="telefono" id="telefono" placeholder="Nro sin punto sin guines (. -)"></div>

      <div class="etiqueta"><label for="domicilio">Domicilio</label></div>
      <div><input type="text" name="domicilio" id="domicilio"></div>

      <div class="etiqueta"><label for="prefijo">Prefijo</label></div>
      <div>
        <select class="selec" name="prefijo_id" id="selec_prefijo_1">
        </select>
      </div>

      <div class="etiqueta"><label for="municipio">Municipio</label></div>
      <div>
        <select class="selec" name="municipio_id" id="selec_municipio">
        </select>
      </div>

      <div class="etiqueta"><label for="">Activo</label></div>
      <div>
        <select name="activo" id="">
          <option value="1">SI</option>
          <option value="0">NO</option>
        </select>
      </div>
      <div></div>

      <div>
        <button type="submit" class="guardar">GUARDAR</button>
        <button class="cancelar">Cancelar</button>
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
              <td class="td_contac">Nro Contacto</td>
              <td class="td_prefijo">Prefijo</td>
              <td class="td_muni">Municipio</td>
              <td class="td_accion">Accion</td>
            </tr>
          </thead>

        </table>
      </div>


    </div>
  </div>
  <script src="./js/carga_beneficiario.js"></script>
</body>
</html>
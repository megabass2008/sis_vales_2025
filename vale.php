<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./css/vale.css?1">
  <script src="./js/fuente.js" type="module"></script>
</head>

<body>
  <?php
  include 'encabezado.php';
  ?>

  <form class="form_vale" action="" method="get">
    <!-------CONTAINER------->
    <div class="contenedor_vale">

      <!-------ENCABEZADO------->

      <div class="contenedor_encabezado">

        <div class="div_1">
          <div class="tit"><label for="">Datos encabezado</label></div>

          <div class="fecha"><label for="">Fecha</label></div>
          <div class="vencimiento"><label for="">Vencimiento Vale</label></div>

          <div class="inp_fecha"><input type="datetime-local" name="" id=""></div>
          <div class="inp_vencimiento"><input type="datetime-local" name="" id=""></div>

          <div class="expe"><label for="">Expediente</label></div>
          <div class="depo"><label for="">Desposito</label></div>

          <div class="inp_expe"><input type="text" name="" id=""></div>
          <div class="selec_deposito">
            <select class="selec_deposito" name="" id="selec_deposito">
            </select>
          </div>

        </div>

        <div class="div_2">
          <button id="btn_1" class="btn btn_1">Beneficiario</button>
          <button id="btn_2" class="btn btn_2">Prefijo</button>
          <button id="btn_3" class="btn btn_3">Deposito</button>
        </div>


        <div class="div_3">

          <label for="">Prefijo</label>
          <select name="selec_prefijo_1" id="selec_prefijo_1">
          </select>
          <label for="">Beneficiario</label>
          <input type="text" name="input_bene" id="input_bene" placeholder="Apellido o Nombre o DNI (sin puntos)">
          <select class="selec_bene_1" name="selec_bene" id="selec_bene">
          </select>

          <label for=""></label><label for=""></label>

          <label for="">Prefijo</label>
          <select name="selec_prefijo_2" id="selec_prefijo_2">
          </select>
          <label for="">Retira</label>
          <input type="text" name="input_retira" id="input_retira" placeholder="Apellido o nombre o DNI (sin puntos)">
          <select class="selec_retira" name="selec_retira" id="selec_retira">
          </select>
        </div>
      </div>

  </form>



      <!-------DETALLE------->

      <div class="bloque_detalle">
        <!-------DETALLE--
        <div class="tit"><label for="">Detalle Vale</label></div>
        --->

        <div class="lista_detalle">
          <form action="" method="get">
            <table id="tb_detalle">
              <thead>
                <tr>
                  <th class="tb_detalle_cant">Cantidad</th>
                  <th class="tb_detalle_let">Letras</th>
                  <th class="tb_detalle_re">Recurso</th>
                  <th>ACCION</th>
                </tr>
              </thead>

              <tbody id="tbodyDetalle">
              </tbody>

            </table>
          </form>
        </div>
      </div>

      <!-------RECURSO------->

      <div class="bloque_recurso">

        <!-------DETALLE--
        <div class="tit"><label for="">Lista de Recursos</label></div>
        ---->

        <div class="buscador_recurso">
          <input class="input_buscador" type="text" name="" id="" placeholder="Ingrese Recurso o Categoria">
          <div class="btn_pagina">
          </div>
        </div>

        <div class="recurso_filtrado">
          <table id="tb_recurso">
            <thead>
              <tr>
                <th class="tb_lis_re">RECURSO</th>
                <th class="tb_lis_re">CATEGORIA</th>
                <th class="tb_lis_re_2">STOCK</th>
                <th class="tb_lis_re_2">ACCION</th>
              </tr>
            </thead>
          </table>
        </div>

      </div>
      <button id="btn_imprimir" class="btn" type="button">IMPRIMIR</button>
      
    </div>

  

<script src="./js/carga_form_vale.js"></script>
</body>

</html>
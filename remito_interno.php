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

  <main class="contenedor_vale">
    <div class="div_1">
      
      <div class="bloque_encabezado">
        <form class="form_vale" enctype="multipart/form-data" method="post">
          <label class="lbl_tit" for="">Remito Interno</label>

          <label class="lbl_fecha" for="">Fecha</label>
          <label class="lbl_vencimiento" for="">Nro Remito</label>

          
          <input class="inp_fecha" type="date" name="fecha" id="">
          <input class="inp_vencimiento" type="text" name="vencimiento" id="">

          <label class="lbl_expe" for="">Expediente</label>
          <label class="lbl_deposito" for=""></label>

          <input class="inp_expe" type="text" name="expediente" id="" placeholder="Ej: 954-10-24">
          <select class="selec_deposito" name="deposito_id" id=""></select>

          <label class="lbl_prefijo_1" for="">Origen</label>
          <select class="selec_prefijo_1" name="prefijo_id_b" id="selec_prefijo_1"></select>



          <label class="lbl_prefijo_2" for="">Destino</label>
          <select class="selec_prefijo_2" name="prefijo_id_r" id="selec_prefijo_2"></select>


        </form>
      </div>

      <div class="bloque_boton">
        <button id="btn_imprimir" class="btn" type="button">IMPRIMIR</button>
      </div>

    </div>

    <div class="div_2">

      <div>
        <div class="bloque_recurso">
          <div class="buscador_btn">
            <input class="input_buscador" type="text" name="" id="" placeholder="Ingrese Recurso o Categoria">
          </div>
          <div class="btn_pagina">
          </div>
          <table class="tb_recurso" id="tb_recurso">
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

      <div class="bloque_detalle">
        <form class="frm_detalle" enctype="multipart/form-data" method="post">
          <table class="td_detalle" id="tb_detalle">
            <thead>
              <tr>
                <th class="tb_detalle_indice">#</th>
                <th class="tb_detalle_cant">CANTIDAD</th>
                <th class="tb_detalle_let">LETRAS</th>
                <th class="tb_detalle_re">RECURSO</th>
                <th>ACCION</th>
              </tr>
            </thead>

            <tbody class="tbodyetalle" id="tbodyDetalle">
            </tbody>
          </table>
        </form>
      </div>

    </div>

  </main>

</body>

</html>
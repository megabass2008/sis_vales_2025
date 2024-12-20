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

    <div class="bloque_encabezado">
      <form class="form_vale">
        <label class="lbl_tit" for="">Datos encabezado</label>
        
        <label class="lbl_fecha" for="">Fecha</label>
        <label class="lbl_vencimiento" for="">Vencimiento Vale</label>

        <input class="inp_fecha" type="datetime-local" name="fecha_vale" id="">
        <input class="inp_vencimiento" type="datetime-local" name="vencimiento_vale" id="">

        <label class="lbl_expe" for="">Expediente</label>
        <label class="lbl_deposito" for="">Desposito</label>

        <input class="inp_expe" type="text" name="nro_expe" id="">
        <select class="selec_deposito" name="id_deposito" id=""></select>
        
        <label class="lbl_prefijo_1" for="">Prefijo</label>
        <select class="selec_prefijo_1" name="" id="selec_prefijo_1"></select>
        
        <label class="lbl_beneficiario" for="">Beneficiario</label>
        <input class="inp_beneficiario" type="text" name="" id="input_bene" placeholder="Apellido o Nombre o DNI (sin puntos)">
        <select class="selec_bene_1" name="id_beneficiario" id="selec_bene"></select>

        <label class="lbl_prefijo_2" for="">Prefijo</label>
        <select class="selec_prefijo_2" name="" id="selec_prefijo_2"></select>
        
        <label class="lbl_beneficiario_2" for="">Beneficiario</label>
        <input class="inp_beneficiario_2" type="text" name="" id="input_bene_2" placeholder="Apellido o Nombre o DNI (sin puntos)">
        <select class="selec_bene_2" name="id_bene_2" id="selec_bene_2"></select>
        
      </form>
    </div>

    <div>
    <div class="bloque_recurso">
      <input class="input_buscador" type="text" name="" id="" placeholder="Ingrese Recurso o Categoria">
      <div class="btn_pagina"></div>

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
    
    <div class="bloque_boton">
      <button id="btn_imprimir" class="btn" type="button">IMPRIMIR</button>
    </div>
   

    <div>

    <div class="bloque_detalle">

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

  </main>

  <script src="./js/carga_form_vale.js"></script>

</body>

</html>
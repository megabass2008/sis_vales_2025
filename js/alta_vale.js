import {
  recurso_id,
  cantidad_l,
  cantidad_n,
  recuperoInput,
} from "./carga_recurso.js";

//evento clic en imrpmir
export function eve_imprimir() {
  let btn_imprimir = document.querySelector(".btn");
  btn_imprimir.addEventListener("click", (ev) => {
    ev.preventDefault();

    recuperoInput();
    
    alta_vale(recurso_id, cantidad_n, cantidad_l);
  });
}

//submit de Encabezado

function alta_vale(recurso_id, cantidad_n, cantidad_l) {
  let frm = document.querySelector(".form_vale");
  let frm_encabezado = new FormData(frm);

  //let frm_detalle = new FormData();
  frm_encabezado.append("recurso_id", JSON.stringify(recurso_id));
  frm_encabezado.append("cantidad_n", JSON.stringify(cantidad_n));
  frm_encabezado.append("cantidad_l", JSON.stringify(cantidad_l));

  envio_datos(frm_encabezado);

  //envio_datos(frm, frm_2);
}

function envio_datos(frm_encabezado) {
  fetch("./alta_vale.php", {
    method: "POST",
    body: frm_encabezado,
  });
}

//llamar a PDF vale

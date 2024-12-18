export async function carga_recurso(valor_recurso = "") {
  try {
    const respuesta = await fetch(
      `./con_recurso.php?recurso=${valor_recurso}&categoria=${valor_recurso}`
    );
    const data = await respuesta.json();
    carga_tb_recurso(data);
  } catch (error) {
    console.error("Error al cargar el recurso:", error);
  }
}

let input_buscador = document.querySelector(".input_buscador");
input_buscador.addEventListener("keyup", (e) => {
  e.preventDefault();
  let valor_recurso = document.querySelector(".input_buscador").value;
  let tr_ = document.querySelectorAll(".tr_body");

  // vaciar por completo el nodelist tr_
  tr_.forEach((tr) => tr.remove());
  carga_recurso(valor_recurso);
});

let paginaActual = 0;
let registrosPorPagina = 10;

export function carga_tb_recurso(data, paginaActual = 1) {
  let tablaRecurso = document.querySelector("#tb_recurso");

  let cuerpoTabla = document.createElement("tbody");
  cuerpoTabla.classList.add("tbody");

  //Calcula el número total de páginas
  const totalPaginas = Math.ceil(data.length / registrosPorPagina);

  // Muestra solo los registros de la página actual
  let registrosMostrar = data.slice(
    (paginaActual - 1) * registrosPorPagina,
    paginaActual * registrosPorPagina
  );

  registrosMostrar.forEach((recurso) => {
    let fila = document.createElement("tr");
    fila.classList.add("tr_body");

    let td1 = document.createElement("td");
    td1.textContent = recurso.recurso;
    fila.appendChild(td1);

    let td2 = document.createElement("td");
    td2.textContent = "de nuevo yo";
    fila.appendChild(td2);

    let td3 = document.createElement("td");
    td2.textContent = recurso.categoria;
    fila.appendChild(td3);

    let btn_agregar = document.createElement("button");
    btn_agregar.textContent = "+";
    btn_agregar.classList.add("btn_pag");

    btn_agregar.addEventListener("click", (e) => {
      e.preventDefault();
      carga_recurso_detalle(td1.innerText);
    });

    fila.appendChild(btn_agregar);
    cuerpoTabla.appendChild(fila);
  });

  tablaRecurso.appendChild(cuerpoTabla);
  agrega_btn(totalPaginas, data);
}

// Agrega botones
function agrega_btn(totalPaginas, data) {
  let paginador = document.querySelector(".btn_pagina");
  paginador.innerHTML = "";
  for (let index = 0; index < totalPaginas; index++) {
    let contenido = index + 1;
    let boton = document.createElement("button");
    boton.textContent = contenido;
    paginador.appendChild(boton);
    boton.addEventListener("click", (e) => {
      e.preventDefault();
      paginaActual = contenido;

      // seleccionar la clase tr_body
      let tr_ = document.querySelectorAll(".tr_body");

      // vaciar por completo el nodelist tr_
      tr_.forEach((tr) => tr.remove());

      // cargar la página actual en la tabla
      carga_tb_recurso(data, paginaActual);
    });
  }
}

//cargar recurso al detalle
function carga_recurso_detalle(tex) {
  let cantFilas = document.querySelector("#tb_detalle").rows.length;
  if (cantFilas < 10) {
    let fila = document.createElement("tr");

    let dt1 = document.createElement("td");
    dt1.innerHTML =
      '<input type="number" name="" class="inpDetalle" id="" placeholder="Cantidad en Nro">';
    fila.append(dt1);

    let dt2 = document.createElement("td");
    dt2.innerHTML =
      '<input type="text" name="" class="inpDetalle" id="" placeholder="Cantidad en Letras">';
    fila.append(dt2);

    let dt3 = document.createElement("td");
    dt3.innerText = tex;
    fila.append(dt3);

    let btn_eliminar = document.createElement("button");
    btn_eliminar.textContent = "-";
    btn_eliminar.classList.add("btn_pag_");
    fila.append(btn_eliminar);

    btn_eliminar.addEventListener("click", (e) => {
      e.preventDefault();
      e.target.parentNode.remove();
      console.log(registro);
    });

    tbodyDetalle.append(fila);
  }
}

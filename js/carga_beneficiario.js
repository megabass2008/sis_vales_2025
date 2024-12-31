async function get_beneficiario(valor_fitro = "") {
  try {
    const respuesta = await fetch(
      `./cons_beneficiario_copy.php?valor_fitro=${valor_fitro}`
    );
    const data = await respuesta.json();
    carga_benefi(data);
  } catch (error) {
    console.error("Error al cargar el recurso:", error);
  }
}

let input_buscador = document.querySelector(".inp_2");
input_buscador.addEventListener("keyup", () => {
  let valor_filtro = input_buscador.value;
  let tr_ = document.querySelectorAll(".tr_body");

  // vaciar por completo el nodelist tr_
  tr_.forEach((tr) => tr.remove());

  get_beneficiario(valor_filtro);
});

let paginaActual = 0;
let registrosPorPagina = 10;

// Cargar beneficiario en la tabla
function carga_benefi(data, paginaActual = 1) {
  let tablaBenefi = document.querySelector(".tabla");

  let cuerpoTabla = document.createElement("tbody");
  cuerpoTabla.classList.add("tbody");

  //Calcula el número total de páginas
  const totalPaginas = Math.ceil(data.length / registrosPorPagina);

  // Muestra solo los registros de la página actual
  let registrosMostrar = data.slice(
    (paginaActual - 1) * registrosPorPagina,
    paginaActual * registrosPorPagina
  );

  registrosMostrar.forEach((beneficiarios) => {
    let fila = document.createElement("tr");
    fila.classList.add("tr_body");

    let td1 = document.createElement("td");
    td1.textContent = beneficiarios.apellido_nombre;
    fila.appendChild(td1);

    let td2 = document.createElement("td");
    td2.textContent = beneficiarios.dni;
    fila.appendChild(td2);

    let td3 = document.createElement("td");
    td3.textContent = beneficiarios.telefono;
    fila.appendChild(td3);

    let td4 = document.createElement("td");
    td4.textContent = beneficiarios.prefijo;
    fila.appendChild(td4);

    let td5 = document.createElement("td");
    td5.textContent = beneficiarios.municipio;
    fila.appendChild(td5);

    let btn_agregar = document.createElement("button");
    btn_agregar.textContent = "E";
    btn_agregar.classList.add("btn_pag_ed");
    fila.appendChild(btn_agregar);

    cuerpoTabla.appendChild(fila);
  });

  tablaBenefi.appendChild(cuerpoTabla);
  agrega_btn(totalPaginas, data);
}

// Agrega botones Paginador
function agrega_btn(totalPaginas, data) {
  let paginador = document.querySelector(".paginador");
  paginador.innerHTML = "";
  for (let index = 0; index < totalPaginas; index++) {
    let contenido = index + 1;
    let boton = document.createElement("button");
    boton.textContent = contenido;
    boton.classList.add("btn_pag");
    paginador.appendChild(boton);
    boton.addEventListener("click", (e) => {
      e.preventDefault();
      paginaActual = contenido;

      // seleccionar la clase tr_body
      let tr_ = document.querySelectorAll(".tr_body");

      // vaciar por completo el nodelist tr_
      tr_.forEach((tr) => tr.remove());

      // cargar la página actual en la tabla
      carga_benefi(data, paginaActual);
    });
  }
}

function alta_beneficiario() {
  let formulario = document.querySelector("#formulario");
  let guardar = document.querySelector(".guardar");
  guardar.addEventListener("click", (e) => {
    e.preventDefault();
    const datos_formulario = new FormData(formulario);
    fetch("./alta_beneficiario.php", {
      method: "POST",
      body: datos_formulario,
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        cargar_ultimo_reg(data);
      });

    //.catch((error) => console.error(error));
    formulario.reset();
    let tr_ = document.querySelectorAll(".tr_body");
    //vaciar por completo el nodelist tr_

    tr_.forEach((tr) => tr.remove());
    get_beneficiario();
    formulario.reset();
  });
}

function cargar_ultimo_reg(data) {
  //try {
  fetch(`./cons_ultimo_registrado.php?id=${data}`)
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
      data.forEach((item) => {
        let agregado = document.querySelector(".div_agregado");

        agregado.textContent = item.apellido_nombre + " - " + item.dni;
      });
    });
}

get_beneficiario();
alta_beneficiario();

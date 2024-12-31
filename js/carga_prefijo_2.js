export function even_cargar_prefijo_2() {
  fetch("./cons_prefijo.php")
    .then((response) => response.json())
    .then((data) => cargar_prefijo_2(data));
}

//AGREGA OPTIONS A PREFIJO_2
export function cargar_prefijo_2(data) {
  let prefijo_2 = document.querySelector("#selec_prefijo_2");
  prefijo_2.innerHTML = "";

  let option = document.createElement("option");
    option.value = 0;
    option.textContent = 'Seleccione un prefijo';
    prefijo_2.appendChild(option);

  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_prefijo;
    option.textContent = item.prefijo;
    prefijo_2.appendChild(option);
  });

  // EVENTO CHANGE PREFIJO_1
  prefijo_2.addEventListener("change", () => {
    retira(prefijo_2.value);
  });
}

// CONSULTA SEGUN CHANGE PREFIJO_1
export function retira(valor_r, valor_r_2 = "") {
  fetch(`./cons_retira.php?valor_r=${valor_r}&valor_r_2=${valor_r_2}`)
    .then((response) => response.json())
    .then((data) => cargar_retira(data));
}

// IMPRIME CONSULTA EN SELECT BENEFICIARIO
export function cargar_retira(data) {
  let retira = document.querySelector("#selec_bene_2");
  retira.innerHTML = "";
  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_beneficiario;
    option.textContent = `${item.apellido_nombre} - ${item.dni}`;
    retira.appendChild(option);
  });
}

export function ev_mod_retira() {
  let valor = document.querySelector("#selec_prefijo_2");
  document.querySelector("#input_bene_2").addEventListener("keyup", (e) => {
    e.preventDefault();
    let valor_2 = document.querySelector("#input_bene_2").value;
    retira(valor.value, valor_2);
  });
}

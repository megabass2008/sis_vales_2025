export async function even_cargar_prefijo() {
  const respuesta = await fetch("./cons_prefijo.php");
  const data = await respuesta.json();
  cargar_prefijo(data);
}

//AGREGA OPTIONS A PREFIJO_1
export function cargar_prefijo(data) {
  let prefijo_1 = document.querySelector("#selec_prefijo_1");
  prefijo_1.innerHTML = "";

  let option = document.createElement("option");
    option.value = 0;
    option.textContent = 'Seleccione un prefijo';
    prefijo_1.appendChild(option);



  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_prefijo;
    option.textContent = item.prefijo;
    prefijo_1.appendChild(option);
  });

  // EVENTO CHANGE PREFIJO_1
  prefijo_1.addEventListener("change", () => {
    benefi(prefijo_1.value);
  });
}

// CONSULTA SEGUN CHANGE PREFIJO_1
export function benefi(valor, valor_2 = "") {
  fetch(`./cons_beneficiario.php?valor=${valor}&valor_2=${valor_2}`)
    .then((response) => response.json())
    .then((data) => cargar_beneficiario(data));
}

// IMPRIME CONSULTA EN SELECT BENEFICIARIO
export function cargar_beneficiario(data) {
  let beneficiario = document.querySelector("#selec_bene");
  beneficiario.innerHTML = "";
  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_beneficiario;
    option.textContent = `${item.apellido_nombre} - ${item.dni}`;
    beneficiario.appendChild(option);
  });
}

export function ev_mod_beneficiario() {
  let valor = document.querySelector("#selec_prefijo_1");
  document.querySelector("#input_bene").addEventListener("keyup", (e) => {
    e.preventDefault();
    let valor_2 = document.querySelector("#input_bene").value;
    benefi(valor.value, valor_2);
  });
}

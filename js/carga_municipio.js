async function even_cargar_municipio() {
  const respuesta = await fetch("./cons_municipio.php");
  const data = await respuesta.json();
  cargar_municipio(data);
}

//AGREGA OPTIONS A PREFIJO_1
function cargar_municipio(data) {
  let prefijo_1 = document.querySelector("#selec_municipio");
  prefijo_1.innerHTML = "";
  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_municipio;
    option.textContent = item.municipio;
    prefijo_1.appendChild(option);
  });
}

even_cargar_municipio();

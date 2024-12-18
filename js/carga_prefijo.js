async function even_cargar_prefijo() {
  const respuesta = await fetch("./cons_prefijo.php");
  const data = await respuesta.json();
  cargar_prefijo(data);
}

//AGREGA OPTIONS A PREFIJO_1
function cargar_prefijo(data) {
  let prefijo_1 = document.querySelector("#selec_prefijo_1");
  prefijo_1.innerHTML = "";
  data.forEach((item) => {
    let option = document.createElement("option");
    option.classList.add('option');
    option.value = item.id_prefijo;
    option.textContent = item.prefijo;
    prefijo_1.appendChild(option);
  });
}

even_cargar_prefijo();

const btn_guardar = document.getElementById("guardar");
const formulario = document.getElementById("formulario");

btn_guardar.addEventListener("click", (e) => {
  const frm = new FormData(formulario);
  fetch("./carga_usuario.php", {
    method: "POST",
    body: frm,
  })
    .then((response) => response.json())
    .then((data) => console.log(data))
    .catch((error) => console.error(error));
});

formulario.reset();

async function carga_tabla_usuario(valor_fitro = "") {
  try {
    const respuesta = await fetch(`./cons_usuarios.php`);
    const data = await respuesta.json();
    carga_usuarios(data);
  } catch (error) {
    //console.error("Error al cargar el recurso:", error);
  }
}

const fragmento = document.createDocumentFragment();
const tabla = document.querySelector(".tabla");
let cuerpoTabla = document.createElement("tbody");
cuerpoTabla.classList.add("tbody");

function carga_usuarios(data) {
  data.forEach((usuario) => {
    console.log(usuario.apellido_nombre + "->" + usuario.rol_id);

    let fila = document.createElement("tr");
    fila.classList.add("tr_body");

    let td1 = document.createElement("td");
    td1.textContent = usuario.apellido_nombre;
    fila.appendChild(td1);

    let td2 = document.createElement("td");
    td2.textContent = usuario.dni;
    fila.appendChild(td2);

    let td3 = document.createElement("td");
    td3.textContent = usuario.usuario;
    fila.appendChild(td3);

    let td4 = document.createElement("td");
    td4.textContent = usuario.rol;
    fila.appendChild(td4);

    let td5 = document.createElement("td");
    td5.textContent = usuario.activo;
    fila.appendChild(td5);

    cuerpoTabla.appendChild(fila);
  });

  tabla.appendChild(cuerpoTabla);
}

carga_tabla_usuario();

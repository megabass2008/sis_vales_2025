cons_rol();

async function cons_rol() {
  const cons_rol = await fetch("./cons_rol.php");
  const data = await cons_rol.json();

  carga_rol(data);
}

function carga_rol(data) {
  const selec_rol = document.querySelector("#rol");
  data.forEach((rol) => {
    const opt_rol = document.createElement("option");
    opt_rol.textContent = rol.rol;
    opt_rol.value = rol.id_rol;
    selec_rol.appendChild(opt_rol);
  });
}

const btn = document.getElementById("btn");
let usuario = document.getElementById("usuario");
let pass = document.getElementById("contrasena");

btn.addEventListener("click", () => {
  if (usuario.value === "" || pass.value === "") {
    alert("complete los campos");
  } else if (pass.value === "1234") {
    alert("cambie la contraseña");
    let contenedor_1 = document.getElementById("elemento");
    let contenedor_2 = document.getElementById("contenedor_2");

    contenedor_1.classList.add("contenedor_off");
    contenedor_2.classList.remove("cambio_pass");

    cambiar_pass();
  } else {
    alert("enviando al servidor");
    logueo();
  }
});

function logueo() {
  let frm_log = document.getElementById("frm_login");
  let frm = new FormData(frm_log);

  fetch("./cons_login_usuario.php", {
    method: "POST",
    body: frm,
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error(`Error HTTP: ${response.status}`);
      }
      return response.json();
    })
    .then((data) => {
      console.log("Respuesta del servidor:", data); // <-- Verificar en consola

      if (data.success) {
        alert("Inicio de sesión exitoso");
        window.location.href = "./vale.php";
      } else {
        alert(data.message || "Error en el inicio de sesión");
      }
    })
    .catch((error) => console.error("Error en la petición:", error));
}

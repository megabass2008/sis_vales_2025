export function even_cargar_deposito() {
  fetch("./cons_deposito.php")
    .then((response) => response.json())
    .then((data) => cargar_deposito(data));
  }

export function cargar_deposito(data) {
  let deposito = document.querySelector(".selec_deposito");
  deposito.innerHTML = "";
  data.forEach((item) => {
    let option = document.createElement("option");
    option.value = item.id_deposito;
    option.textContent = item.deposito;
    deposito.appendChild(option);
  });
}
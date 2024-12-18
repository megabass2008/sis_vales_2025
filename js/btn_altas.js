export function alta_beneficiario() {
  let btn_1 = document.querySelector("#btn_1");
  btn_1.addEventListener("click", (e) => {
    e.preventDefault();
    window.open("./frm_beneficiario.php");
  });
}

export function alta_prefijo() {
  let btn_1 = document.querySelector("#btn_2");
  btn_1.addEventListener("click", (e) => {
    e.preventDefault();
    window.open("./frm_prefijo.php");
  });
}

export function alta_deposito() {
  let btn_1 = document.querySelector("#btn_3");
  btn_1.addEventListener("click", (e) => {
    e.preventDefault();
    window.open("./frm_deposito.php");
  });
}

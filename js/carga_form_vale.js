function btn_imprimir() {
  let btn_imprimir = document.querySelector('#btn_imprimir');
  btn_imprimir.addEventListener('click', (e)=>{
    e.preventDefault();
    carga_form_vale();
    })
    
}

function carga_form_vale() {
  let form_encabezado = document.querySelector('.form_vale');
  console.log(form_encabezado);
}

btn_imprimir();
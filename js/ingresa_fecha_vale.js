export function fecha_e() {
const hoy = new Date();
const fechaISO = hoy.toISOString().split("T")[0];
let fecha_e = document.querySelector('.inp_fecha');
fecha_e.value = fechaISO;
fecha_v(fechaISO);
}

export function fecha_v(fechaISO){
  const nuevaFecha = new Date(fechaISO);
  nuevaFecha.setDate(nuevaFecha.getDate() + 14);
  document.querySelector('.inp_vencimiento').value = nuevaFecha.toISOString().split("T")[0]
}

export function actualiza_fecha_v() {
  let fecha_e = document.querySelector('.inp_fecha');
  fecha_e.addEventListener('change', ()=>{
    let fechaISO = document.querySelector('.inp_fecha').value;
    fecha_v(fechaISO);
  });
}




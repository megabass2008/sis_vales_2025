
function completarConCeros(input) {
  var valor = input.value;
  var partes = valor.split('-');
  if (partes.length === 3) {
    var parteCentral = partes[1];
    while (parteCentral.length < 6) {
      parteCentral = '0' + parteCentral;
    }
    partes[1] = parteCentral;
    input.value = partes.join('-');
  }
}

export function mascara_input() {
  var input = document.querySelector('.inp_expe');
  input.addEventListener('input', function() {
  completarConCeros(input);
});
}



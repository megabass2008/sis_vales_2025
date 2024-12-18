Entiendo lo que estás describiendo. Parece que estás implementando una función de "agregar" y "eliminar" elementos entre dos tablas. A continuación, te proporciono un ejemplo de cómo podrías implementar esto utilizando HTML, CSS y JavaScript:

HTML:

<!-- Tabla 1 -->
<table id="tabla1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Agregar</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Elemento 1</td>
      <td><button class="agregar">Agregar</button></td>
    </tr>
    <tr>
      <td>Elemento 2</td>
      <td><button class="agregar">Agregar</button></td>
    </tr>
    <tr>
      <td>Elemento 3</td>
      <td><button class="agregar">Agregar</button></td>
    </tr>
  </tbody>
</table>

<!-- Tabla 2 -->
<table id="tabla2">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody id="tbody2">
  </tbody>
</table>

CSS:

/* Estilos para las tablas */
table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: left;
}

th {
  background-color: #f0f0f0;
}

JavaScript:

// Seleccionar los elementos de la tabla 1
const tabla1 = document.getElementById('tabla1');
const botonesAgregar = tabla1.querySelectorAll('.agregar');

// Seleccionar la tabla 2 y su cuerpo
const tabla2 = document.getElementById('tabla2');
const tbody2 = document.getElementById('tbody2');

// Función para agregar un elemento a la tabla 2
function agregarElemento(elemento) {
  const fila = document.createElement('tr');
  fila.innerHTML = `
    <td>${elemento}</td>
    <td><button class="eliminar">Eliminar</button></td>
  `;
  tbody2.appendChild(fila);
}

// Función para eliminar un elemento de la tabla 2
function eliminarElemento(elemento) {
  const fila = elemento.parentNode.parentNode;
  tbody2.removeChild(fila);
}

// Agregar eventos a los botones de agregar
botonesAgregar.forEach((boton) => {
  boton.addEventListener('click', () => {
    const elemento = boton.parentNode.parentNode.cells[0].textContent;
    agregarElemento(elemento);
  });
});

// Agregar eventos a los botones de eliminar
tbody2.addEventListener('click', (e) => {
  if (e.target.classList.contains('eliminar')) {
    const elemento = e.target.parentNode.parentNode.cells[0].textContent;
    eliminarElemento(elemento);
  }
});

Este código crea dos tablas, una con elementos y botones de agregar, y otra vacía. Cuando se hace clic en un botón de agregar, se agrega el elemento correspondiente a la segunda tabla. Cuando se hace clic en un botón de eliminar, se elimina el elemento correspondiente de la segunda tabla.

Espero que esto te ayude a implementar la función que estás buscando. ¡Si tienes alguna pregunta o necesitas más ayuda, no dudes en preguntar!

<!-- Tabla de recursos -->
<table id="tabla-recursos">
  <thead>
    <tr>
      <th>Recurso</th>
      <th>Precio</th>
      <th>Agregar</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Recurso 1</td>
      <td>10.00</td>
      <td><button class="agregar-recurso">Agregar</button></td>
    </tr>
    <tr>
      <td>Recurso 2</td>
      <td>20.00</td>
      <td><button class="agregar-recurso">Agregar</button></td>
    </tr>
  </tbody>
</table>

<!-- Formulario de detalle de factura -->
<form id="detalle-factura">
  <h2>Detalle de la factura</h2>
  <table>
    <thead>
      <tr>
        <th>Recurso</th>
        <th>Cantidad</th>
        <th>Precio</th>
        <th>Total</th>
        <th>Quitar</th>
      </tr>
    </thead>
    <tbody id="detalle-factura-tbody">
      <!-- Aquí se agregarán las filas del detalle de la factura -->
    </tbody>
  </table>
</form>

<script>
  // Función para agregar un recurso al detalle de la factura
  function agregarRecurso(recurso) {
    const fila = document.createElement('tr');
    fila.innerHTML = `
      <td>${recurso.nombre}</td>
      <td><input type="number" value="1" id="cantidad-${recurso.nombre}"></td>
      <td>${recurso.precio}</td>
      <td><span id="total-${recurso.nombre}">${recurso.precio}</span></td>
      <td><button class="quitar-recurso">Quitar</button></td>
    `;
    const tbody = document.getElementById('detalle-factura-tbody');
    tbody.appendChild(fila);

    // Agrega un evento para calcular el total cuando se cambie la cantidad
    const inputCantidad = fila.querySelector(`#cantidad-${recurso.nombre}`);
    inputCantidad.addEventListener('input', (e) => {
      const cantidad = e.target.value;
      const precio = recurso.precio;
      const total = cantidad * precio;
      const spanTotal = fila.querySelector(`#total-${recurso.nombre}`);
      spanTotal.textContent = total;
    });

    // Agrega un evento para quitar el recurso cuando se haga clic en el botón
    const botonQuitar = fila.querySelector('.quitar-recurso');
    botonQuitar.addEventListener('click', (e) => {
      const fila = e.target.parentNode.parentNode;
      fila.parentNode.removeChild(fila);
    });
  }

  // Agrega el evento para agregar un recurso al detalle de la factura
  document.querySelectorAll('.agregar-recurso').forEach((boton) => {
    boton.addEventListener('click', (e) => {
      const recurso = {
        nombre: e.target.parentNode.parentNode.cells[0].textContent,
        precio: e.target.parentNode.parentNode.cells[1].textContent
      };
      agregarRecurso(recurso);
    });
  });
</script>

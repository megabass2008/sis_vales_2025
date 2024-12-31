<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Header</title>
	<link rel="stylesheet" href="./css/encabezado.css">
</head>

<body>
	<div class="encabezado_contenedor">
		<img src="./img/logo.png" alt="" class="img imag">

		<span class="titulo_span titulo">Sistema de Vales</span>
		<span class="usuario">Usuario:</span>
		<span class="salir">Salir</span>
	</div>

	<nav>
		<ul class="menu-horizontal">
			<li><a href="#">INICIO</a></li>
			<li>
				<a href="#">REMITO</a>
				<ul class="menu-vertical">
					<li><a href="#">Nuevo Remito</a></li>
					<li><a href="#">Lista Remitos</a></li>
				</ul>
			</li>

			<li>
				<a href="#">VALES</a>
				<ul class="menu-vertical">
					<li><a href="#">Nuevo Vale</a></li>
					<li><a href="#">Lista Vales</a></li>
					<li><a href="#">Vales Interno</a></li>
				</ul>
			</li>

			<li><a href="#">ALTAS</a>
				<ul class="menu-vertical">
					<li><a href="./frm_beneficiario.php" target="_blank">Beneficiario</a>
					</li>
					<li><a href="./frm_proveedor.php" target="_blank">Proveedor</a>
					</li>
					<li><a href="./frm_prefijo.php" target="_blank">Prefijo</a>
					</li>
					<li><a href="./frm_deposito.php" target="_blank">Deposito</a>
					</li>
					<li><a href="./frm_municipio.php" target="_blank">Municipio</a>
					</li>
				</ul>
			</li>

			<li><a href="#">ADMINISTRACION</a></li>

		</ul>
	</nav>

</body>

</html>